#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATE_DIR="$SCRIPT_DIR/template/presentation"
PRESENTATIONS_DIR="$SCRIPT_DIR/presentations"

if [ $# -lt 1 ]; then
  echo "Usage: ./new.sh <presentation-name>"
  echo ""
  echo "Creates a new Slidev presentation in presentations/<name>/"
  echo ""
  echo "Examples:"
  echo "  ./new.sh my-topic"
  echo "  ./new.sh quarterly-review"
  exit 1
fi

NAME="$1"
TARGET_DIR="$PRESENTATIONS_DIR/$NAME"

if [ -d "$TARGET_DIR" ]; then
  echo "Error: Presentation '$NAME' already exists at $TARGET_DIR"
  exit 1
fi

echo "Creating presentation: $NAME"

cp -R "$TEMPLATE_DIR" "$TARGET_DIR"

ROOT_GITIGNORE="$SCRIPT_DIR/.gitignore"
if [ ! -f "$ROOT_GITIGNORE" ] || ! grep -q "^presentations/$" "$ROOT_GITIGNORE"; then
  echo "presentations/" >> "$ROOT_GITIGNORE"
fi

cd "$TARGET_DIR"

echo "Installing dependencies with bun..."
bun install

if command -v git &> /dev/null; then
  git init
  git add .
  git commit -m "Initial commit"
fi

echo ""
echo "Presentation '$NAME' created at: $TARGET_DIR"
echo ""
echo "To start developing:"
echo "  cd $TARGET_DIR"
echo "  bun run dev"
echo ""
echo "Build for production:"
echo "  bun run build"
echo ""
echo "Export to PDF:"
echo "  bun run export-pdf"