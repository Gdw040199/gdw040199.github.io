#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$project_dir"

if [ -x "$project_dir/vendor/bootstrap/bin/bundle" ]; then
  export GEM_HOME="$project_dir/vendor/bootstrap"
  export GEM_PATH="$GEM_HOME"
  export BUNDLE_USER_HOME="$project_dir/vendor/bundler-cache"
  export BUNDLE_PATH="$project_dir/vendor/bundle"
  exec "$project_dir/vendor/bootstrap/bin/bundle" exec jekyll serve --host 127.0.0.1 "$@"
fi

exec bundle exec jekyll serve --host 127.0.0.1 "$@"

