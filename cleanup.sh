#!/bin/bash
# cleanup_latex.sh
# Remove intermediate LaTeX compilation files, keep only .tex and .pdf

# List of extensions to delete
EXTENSIONS=(
  aux
  log
  out
  toc
  bbl
  blg
  lof
  lot
  fls
  fdb_latexmk
  synctex.gz
  nav
  snm
  vrb
)

echo "Cleaning up LaTeX intermediate files..."

for ext in "${EXTENSIONS[@]}"; do
  find . -type f -name "*.${ext}" -exec rm -f {} +
done

echo "Cleanup complete. Only .tex and .pdf files remain."

# in git bash: run:
# ./cleanup.sh