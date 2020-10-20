#!/usr/bin/env bash

output() {
  while IFS= read -r LINE;
  do
    if [[ "$LINE" =~ ^-----\>.* ]]; then
      echo "$LINE" || true
    else
      echo "       $LINE" || true
    fi
  done
}

newline() {
  echo "" || true
}

header() {
  newline
  echo "-----> $*" || true
}

error() {
  echo " !     $*" >&2 || true
  newline
}
