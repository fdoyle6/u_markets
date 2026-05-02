# Documentation Standards

## Objectives

This document discusses the standards of documenting changes, results, and takeaways.

## Standards

1. Add documentation shall be done in markdown.
    - Markdown is a generally available package that allows images to be pasted into documents without spending time obsessing over organizational details that (generally) do not matter.
    - At the same time, LaTeX would have been the gold standard, but the time to get that up and running took too much effort and had too many side effects.
2. Studies, design, models, and other work items shall not be considered complete without a corresponding writeup.
3. Images in documentation shall be included at the highest possible level.
4. All markdown files shall include an overview section discussing what the goal of the document is. This shall be the first section under the title, and shall be called one of:

    - Overview
    - Summary
    - Objective(s)

5. Each markdown document will include one and only one header section to give it a name.
6. Each markdown document shall be tracked in the raw folder.
7. Every file shall be compilable and compiled into the same folder path in every version.
8. Every time a file is updated, the compiled versions of that file will be released at the same time.

## Documentation Formats

Top level in the documentation folder are the formats that the documents are available, as well as the Images folder.

- Images - A folder for common, shared images that can go into documentation generally.
- Pdf - This folder holds all of compiled documents saved in pdf format.
- Raw - This folder holds the text version of each of the documents.

## Documentation Sub-Sections

The below sub-sections are use to organize the information contained in the documentation folder.

- Design - Notes about architecture, component design, and how things interact.
- Developer - Notes for other developers, especially for getting them up and running.
- Models - Information about models that were created and how they were validated.
- Notes - General notes about things that have happened and things that have been found throughout work on this project. The intent for this is to capture things of note that do not fall into other folders.
- Standards - The standards folder contains the baseline standards for developing in this project.
- Studies - The studies folder contains write-ups and proposals for different studies.
