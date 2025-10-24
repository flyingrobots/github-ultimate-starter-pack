#!/usr/bin/env node
import { promises as fs } from 'node:fs';
import { join, relative } from 'node:path';

const root = process.cwd();
const docsDir = join(root, 'docs');
const githubDir = join(root, '.github');
const indexPath = join(docsDir, 'index.md');
const marker = '<!-- auto:template-table -->';

const friendlyTitles = {
  '.github/DISCUSSION_TEMPLATE/critique-thread.md': 'Critique Thread',
  '.github/DISCUSSION_TEMPLATE/mini-rfc-fast-track.md': 'Mini RFC (Fast Track)',
  '.github/DISCUSSION_TEMPLATE/rfc.md': 'RFC Discussion',
  '.github/DISCUSSION_TEMPLATE/community-welcome.md': 'Community Welcome'
};

const domainOrder = [
  'Architecture',
  'Community',
  'Knowledge',
  'Operations',
  'Planning',
  'Strategy',
  'Issues',
  'Pull Requests',
  'Discussions'
];
const domainWeight = Object.fromEntries(domainOrder.map((d, i) => [d, i]));

async function readFile(path) {
  return fs.readFile(path, 'utf8');
}

function parseFrontMatter(content) {
  if (!content.startsWith('---')) return {};
  const end = content.indexOf('\n---', 3);
  if (end === -1) return {};
  const block = content.slice(3, end).trim();
  const lines = block.split('\n');
  const data = {};
  for (const line of lines) {
    const idx = line.indexOf(':');
    if (idx === -1) continue;
    const key = line.slice(0, idx).trim();
    let value = line.slice(idx + 1).trim();
    if (value.startsWith('"') && value.endsWith('"')) {
      value = value.slice(1, -1);
    }
    data[key] = value;
  }
  return data;
}

function cleanTitle(raw) {
  if (!raw) return '';
  let title = raw;
  const prefixes = ['Discussion: ', 'Critique: ', 'Mini RFC (Fast Track): ', 'RFC: '];
  for (const prefix of prefixes) {
    if (title.startsWith(prefix)) {
      title = title.slice(prefix.length);
    }
  }
  title = title
    .replace(/—\s*\{[^}]+\}/g, '')
    .replace(/:\s*\{[^}]+\}/g, '')
    .replace(/\{[^}]+\}/g, '')
    .trim();
  if (!title) {
    const fallback = raw.replace(/\{[^}]+\}/g, '').replace(/[:—]\s*$/, '').trim();
    return fallback || raw;
  }
  return title;
}

function cleanDescription(desc) {
  if (!desc) return '';
  return desc.replace(/\s+/g, ' ').trim();
}

function detectVariant(relPath, meta) {
  const lower = relPath.toLowerCase();
  const name = (meta.name || meta.title || '').toLowerCase();
  if (
    lower.includes('lite') ||
    lower.includes('quick') ||
    name.includes('lite') ||
    name.includes('quick') ||
    name.includes('fast track')
  ) {
    return 'Lite';
  }
  if (meta.status === 'draft') return 'Draft';
  return 'Full';
}

function detectDomain(relPath) {
  if (relPath.startsWith('.github/ISSUE_TEMPLATE')) return 'Issues';
  if (relPath.startsWith('.github/PULL_REQUEST_TEMPLATE')) return 'Pull Requests';
  if (relPath.startsWith('.github/DISCUSSION_TEMPLATE')) return 'Discussions';
  const parts = relPath.split('/');
  return parts.length > 1 ? capitalize(parts[1]) : 'Docs';
}

function capitalize(str) {
  return str.charAt(0).toUpperCase() + str.slice(1);
}

async function gatherMarkdown(dir) {
  const results = [];
  const entries = await fs.readdir(dir, { withFileTypes: true });
  for (const entry of entries) {
    if (entry.name.startsWith('.')) continue;
    const full = join(dir, entry.name);
    if (entry.isDirectory()) {
      results.push(...await gatherMarkdown(full));
    } else if (entry.isFile() && entry.name.endsWith('.md')) {
      results.push(full);
    }
  }
  return results;
}

async function buildEntries() {
  const files = [
    ...(await gatherMarkdown(githubDir)),
    ...(await gatherMarkdown(docsDir))
  ];
  const entries = [];
  for (const file of files) {
    if (file === indexPath) continue;
    if (file.includes('/previews/')) continue;
    const rel = relative(root, file).replace(/\\/g, '/');
    const content = await readFile(file);
    const meta = parseFrontMatter(content);
    const domain = detectDomain(rel);
    const title =
      friendlyTitles[rel] ||
      cleanTitle(meta.name || meta.title || rel.split('/').pop().replace('.md', ''));
    const description = cleanDescription(meta.description || meta.usage || meta.about || '');
    const variant = detectVariant(rel, meta);
    entries.push({ domain, title, description, variant, path: rel });
  }
  entries.sort((a, b) => {
    const dw = (domainWeight[a.domain] ?? 999) - (domainWeight[b.domain] ?? 999);
    if (dw !== 0) return dw;
    return a.title.localeCompare(b.title);
  });
  return entries;
}

function renderTable(entries) {
  const rows = [
    '| Domain | Template | Description | Variant | Path |',
    '| --- | --- | --- | --- | --- |'
  ];
  for (const e of entries) {
    rows.push(`| ${e.domain} | ${e.title} | ${e.description} | ${e.variant} | \`${e.path}\` |`);
  }
  return rows.join('\n');
}

async function updateIndex(table) {
  const index = await readFile(indexPath);
  if (!index.includes(marker)) {
    throw new Error(`Marker '${marker}' not found in docs/index.md`);
  }
  const [before, rest] = index.split(marker);
  const splitToken = '\n\n## When to Use Lite vs. Full';
  const [ignored, after] = rest.split(splitToken, 2);
  if (after === undefined) {
    throw new Error('Could not find "## When to Use Lite vs. Full" section in docs/index.md');
  }
  const newContent = before + marker + '\n' + table + '\n' + splitToken + after;
  await fs.writeFile(indexPath, newContent);
}

(async () => {
  const entries = await buildEntries();
  const table = renderTable(entries);
  await updateIndex(table);
  console.log(`Generated index table with ${entries.length} templates.`);
})();
