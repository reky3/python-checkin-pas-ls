#!/usr/bin/env bash

cd ..

git add --all
git commit -m "Zmena vytvorena bashom $(date)"
git push

echo "Zmeny bolu pushnute na github."
