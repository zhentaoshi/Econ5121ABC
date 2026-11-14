# Repository guidance

## Project and layout

This repository contains public ECON5121 econometrics lecture slides by
Zhentao Shi at the Chinese University of Hong Kong. It is a LaTeX Beamer
project, with each root-level `.tex` file compiling independently.

- `MLE.tex`: maximum likelihood estimation (lecture 10).
- `limited_dep.tex`: limited dependent variable models (lecture 11).
- `panel.tex`: panel data (lecture 12).
- `causal.tex`: causal inference slides.
- `intro.tex`: introductory slides.
- `fig/`: shared figure assets; preserve filename capitalization.
- Root-level PDFs are tracked teaching materials.
- `README.md`: course overview, lecture links, and CC BY-NC-SA 4.0 license.
- `cleanup.sh`: recursively removes common LaTeX intermediate files.

## Editing conventions

- Edit the `.tex` sources directly. They contain LyX-generated preambles,
  but no `.lyx` source is tracked.
- Keep changes focused on the requested slides or topic. Preserve the
  existing preamble and formatting unless the task requires changing them.
- Follow the existing 12-point Beamer style: Madrid theme, spruce colors,
  serif fonts, and frame/itemize-based slide structure.
- Preserve mathematical notation across related frames. Check assumptions,
  dimensions, conditioning, and derivations when changing econometric content.
- Keep slide text concise and retain intentional `\pause` overlays.
- Reference figures using relative paths such as `fig/logistic_normal.png`.
  Reuse existing assets when appropriate.
- Preserve attribution and the repository's license when adding material.

## Build and validation

Run commands from the repository root so relative figure paths resolve.
The local environment provides `latexmk` and `pdflatex`.

```sh
latexmk -pdf -interaction=nonstopmode -halt-on-error limited_dep.tex
```

Replace the filename with the changed deck. If `latexmk` is unavailable,
run `pdflatex -interaction=nonstopmode -halt-on-error <deck>.tex` twice.
There is no automated test suite or central build configuration.

- Compile each changed deck and inspect its log for errors, unresolved
  references, missing assets, and overfull boxes affecting changed slides.
- For visual changes, inspect the affected PDF pages for clipping, equation
  readability, figure placement, and overlay behavior.
- PDFs are deliverables: regenerate the relevant tracked PDF when requested
  or when delivering revised slides. For source-only checks, use a temporary
  output directory with `latexmk -outdir=<temporary-directory>`.
- Do not overwrite a pre-existing user-modified PDF merely to validate a
  source change; use a temporary output directory in that situation.
- Auxiliary files are ignored by Git. If cleanup is needed, run
  `bash cleanup.sh` from the root; it removes intermediates recursively.
- Check `git diff --check` and `git status --short` before finishing. Preserve
  unrelated user changes and avoid regenerating unrelated decks.
