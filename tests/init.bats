#!/usr/bin/env bats

setup() {
  tmpdir=$(mktemp -d)
  cd "$tmpdir"
}

teardown() {
  cd /workspace
  rm -rf "$tmpdir"
}

@test "gusp init bootstraps new repo with defaults" {
  run gusp init <<'PROMPTS'


tester
1
1
2



PROMPTS
  [ "$status" -eq 0 ]
  [ -d .git ]
  [ -d .github ]
  [ -d docs ]
  [ -f LICENSE ]
  [ -f .github/CODEOWNERS ]
  [[ "$output" == *"GitHub Ultimate Starter Pack init complete"* ]]
}

@test "oss-scaffold respects overrides" {
  run env \
    OSS_SCAFFOLD_PROJECT_NAME=TestProject \
    OSS_SCAFFOLD_ORG=tester \
    OSS_SCAFFOLD_LICENSE=MIT \
    OSS_SCAFFOLD_NOTICE=No \
    OSS_SCAFFOLD_CODEOWNERS='@tester/team' \
    OSS_SCAFFOLD_CONTACT_EMAIL='hi@test.dev' \
    OSS_SCAFFOLD_SECURITY_EMAIL='sec@test.dev' \
    OSS_SCAFFOLD_COPYRIGHT='Tester Inc.' \
    bash /root/.gusp/repo/scripts/oss-scaffold.sh <<<""
  [ "$status" -eq 0 ]
  run grep -q "Tester Inc." LICENSE
  [ "$status" -eq 0 ]
  run grep -q "@tester/team" .github/CODEOWNERS
  [ "$status" -eq 0 ]
  [ ! -f NOTICE ]
}
