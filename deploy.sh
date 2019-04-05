#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd "$DIR"

mkdocs build -f documentation/en/mkdocs.yml

cd www && \
git add --all && \
git commit -m "Publishing to gh-pages" && \
git push upstream gh-pages && \
cd ..
