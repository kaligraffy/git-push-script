#!/bin/bash

GENERIC_COMMIT_MESSAGE="bug fixes/refactor"
CREDENTIALS_FILE="$HOME/.git-credentials"

#Override commit message
if [[ ! -z $1 ]]; then
  GENERIC_COMMIT_MESSAGE="$1";
fi

if [[ ! -e $CREDENTIALS_FILE ]]; then
  git config credential.helper 'store'
  echo "Saving credentials in $CREDENTIALS_FILE" 
  git commit -a -m "$GENERIC_COMMIT_MESSAGE";
  git push;
  cat $CREDENTIALS_FILE
else
  git commit -a -m "$GENERIC_COMMIT_MESSAGE";
  git push;
fi
