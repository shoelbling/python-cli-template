#!/bin/bash
VERSION=$1
if [[ -z "$VERSION" ]]; then
  echo "Usage: ./scripts/create-release.sh <version>"
  exit 1
fi

git tag -a "v$VERSION" -m "Release v$VERSION"
git push origin "v$VERSION"
