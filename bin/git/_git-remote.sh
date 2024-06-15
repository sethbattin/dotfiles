#!/usr/bin/env bash
set -euo pipefail

# return a github-style URL for a repo.
_github_repo () {
  local REMOTE=origin
  local REPO=$(git config --local --get remote.${REMOTE}.url)
  REPO=${REPO/:/\/}
  REPO=${REPO/git@/"https://"}
  REPO=${REPO%\.git}

  echo "${REPO}"
  result=0
}
