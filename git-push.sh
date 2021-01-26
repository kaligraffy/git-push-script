#!/bin/bash

GENERIC_COMMIT_MESSAGE="bug fixes/refactor"
CREDENTIALS_FILE="$HOME/.git-credentials"

#Override commit message
if [[ ! -z $1 ]]; then
  GENERIC_COMMIT_MESSAGE="$1";
fi

git config credential.helper 'store'

git commit -a -m "$GENERIC_COMMIT_MESSAGE";
git push;

