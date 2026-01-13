#!/bin/bash
# Run this script from the root of the repository if CI/CD pipeline failed to tag and push jfrog zip files.
# Ensure Script/Utils/payload.json exists with the client payload.

set -euo pipefail

# Generate combined_checksums.json
python3 Script/Utils/combinedjson.py

# Check if combined_checksums.json exists
CHECKSUMS_PATH="Script/Utils/combined_checksums.json"
if [ ! -f "$CHECKSUMS_PATH" ]; then
  echo "Error: $CHECKSUMS_PATH not found. Exiting."
  exit 1
fi

# Extract version from combined_checksums.json
VERSION=$(python3 -c "import json; print(json.load(open('$CHECKSUMS_PATH'))['checksums_release']['version'])")

echo "version=$VERSION"
echo "Version extracted: $VERSION"

update_local_to_remote() {
  local version="$1"
  git add Package.swift
  git commit -m "Update Package.swift to version $version" || echo "No changes to commit."
  git push
}

update_git_tag() {
  local version="$1"
  local TAG_NAME="v${version}"
  echo "Creating tag: $TAG_NAME"
  git tag -a "$TAG_NAME" -m "Release version $version"
  git push origin "$TAG_NAME"
  echo "Successfully created and pushed tag: $TAG_NAME"
}

CHECKSUMS_JSON=$(cat "$CHECKSUMS_PATH")
if ! python3 update_package.py --checksums "$CHECKSUMS_JSON"; then
  echo "Error: update_package.py failed. Exiting."
  exit 1
fi

if git diff --exit-code Package.swift; then
  echo "File Package.swift is up to date. No changes needed."
else
  update_local_to_remote "$VERSION"
  update_git_tag "$VERSION"
fi
