# Organizational Standards

## Objective

This document discusses the standards for organizing folders and files in this repo.

## Standards

1. Folders for a single file are dumb. Intentionally group files, if there is not anything for that file to group with, leave the item at the highest level possible.
2. If there are a bajillion items in a folder, you need a little more organization.
3. All lowercase folder and file names.
4. No spaces in file or folder names.

## High Level Architecture

The high level architecture of the repo contains a bunch of folders to organize information, please follow the guidance below when making new items.

- .venv - Files for configuring the virtual python environment used so that all files can be linked and used together.
- .vscode - Files for making the workspace consistent and easy to set up for everyone.
- Automation - Files used for CI/CD and automation of building & testing.
- Data - Folder for saving results from simulation studies. Generally, there should be nothing committed from this folder.
- Docs - Folder contains documentation, including write-ups of studies, documentation of design, model validation, and others.
- Scripts - Contains scripts that are used to make high level manipulation of items in the repo.
- Src - Source - The main development folder in the repo. Code should live here.
- Test - A collection of tests to confirm that everything in the src folder work as intended.
