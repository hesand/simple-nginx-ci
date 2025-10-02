#!/usr/bin/env bash
set -euo pipefail

URL=$1

echo "Testing $URL ..."

if curl -fsS "$URL" | grep -q "Hello from simple-nginx!"; then
  echo "OK: text found"
else
  echo "FAIL: expected text not found"
  curl -fsS "$URL" || true
  exit 1
fi
