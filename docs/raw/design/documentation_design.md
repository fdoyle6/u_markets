# Documentation Trade

## Overview

This document describes the trades and design decisions that played into making the decision to go with markdown as the main documentation format in this repo.

## Needs

1. Documentors must be able to quickly document changes in a way that allows users to quickly add text to a document.
2. Documentation creators must be able to embed images into a document.
3. Documentation must be universally usable, so that documentation users do not need to have all developer tools set up to view results.
4. Documentation package must be free.
5. Changes to documentation must be trackable using git (so word processors that save files as binary files - like Word - are not viable options).

## Preferences

1. Editing can be done in VS Code.
2. Files can be saved to PDFs.
3. Slide formats are available.
4. Minimize boilerplate setup.

## Traded Solutions

1. LaTeX
2. Markdown

## Decision Logic

Going in, I was trying to get LaTeX to work by default.

Getting this set up was way more difficult that I was looking for, and even after taking ~2 hours to download everything that was required, I could not get documents to auto-compile with the plug-in that I had for VS Code.

As well, I also found that the TeX processor that I used (TeXworks) created a bunch of intermediate files that were not automatically cleaned up nor could be directed to a specific directory.

Because of these two reasons, I decided to go with Markdown, we can perform all of the requirements listed above, while also being better at editing in VS Code and being a no-boilerplate solution.

In the process, I also started to ignore the "can do slides format" suggestion. Using variable-sided sections can actually make things a lot easier to read and put together larger arguments and trains of thought.

## Final Solution

Markdown is the documentation format that I went with.

## Future Work

- I would like to figure out how to take markdown files and turn them into PDFs so that we can have static products.
