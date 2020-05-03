#!/usr/bin/env bash

echo "Compiling functions to bin/handlers/ ..."

rm -rf bin/

cd lambda/
for d in `ls -d */ | sed 's#/##'` ; do
  if GOOS=linux go build -ldflags="-s -w" -o "../bin/$d" ${d}/main.go; then
    echo "✓ Compiled $d"
  else
    echo "✕ Failed to compile $d!"
    exit 1
  fi
done

echo "Done."
