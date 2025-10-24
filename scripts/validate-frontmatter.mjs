#!/usr/bin/env node
import { promises as fs } from 'node:fs';
import { join, relative } from 'node:path';

const repoRoot = new URL('..', import.meta.url).pathname;
const docsDir = join(repoRoot, 'docs');
const githubDir = join(repoRoot, '.github');

const requiredDocsKeys = ['title:', 'template_type:', 'audience:', 'usage:', 'status:'];

const issueTemplateKeys = ['name:', 'description:', 'title:'];

async function walk(dir) {
  const entries = await fs.readdir(dir, { withFileTypes: true });
  const paths = [];
  for (const entry of entries) {
    if (entry.name.startsWith('.')) continue;
    const full = join(dir, entry.name);
    if (entry.isDirectory()) {
      paths.push(...await walk(full));
    } else if (entry.isFile() && entry.name.endsWith('.md')) {
      paths.push(full);
    }
  }
  return paths;
}

async function validateDocs() {
  const files = await walk(docsDir);
  const failures = [];
  for (const file of files) {
    const content = await fs.readFile(file, 'utf8');
    const match = content.match(/^---\n([\s\S]*?)\n---/);
    if (!match) {
      failures.push({ file, reason: 'missing front matter block' });
      continue;
    }
    const fm = match[1];
    for (const key of requiredDocsKeys) {
      if (!fm.includes(key)) {
        failures.push({ file, reason: `missing '${key.replace(':', '')}' in front matter` });
      }
    }
  }
  return failures;
}

async function validateGithubTemplates() {
  const files = await walk(githubDir);
  const failures = [];
  for (const file of files) {
    const content = await fs.readFile(file, 'utf8');
    const match = content.match(/^---\n([\s\S]*?)\n---/);
    if (!match) {
      failures.push({ file, reason: 'missing front matter block' });
      continue;
    }
    const fm = match[1];
    const hasName = fm.includes('name:');
    const hasTitle = fm.includes('title:');
    if (!hasName && !hasTitle) {
      failures.push({ file, reason: 'needs a name or title for GitHub pickers' });
    }
    if (fm.includes('description:') === false && fm.includes('about:') === false) {
      failures.push({ file, reason: 'needs description/about for picker context' });
    }
  }
  return failures;
}

(async () => {
  const failures = [
    ...(await validateDocs()),
    ...(await validateGithubTemplates())
  ];
  if (failures.length) {
    for (const failure of failures) {
      console.error(`${relative(repoRoot, failure.file)} :: ${failure.reason}`);
    }
    process.exit(1);
  }
  console.log('Front matter looks righteous.');
})();
