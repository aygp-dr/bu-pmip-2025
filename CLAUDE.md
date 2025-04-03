# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
- Org-mode based repository for tracking the Boston University Project Management in Practice (PMiP) 2025 conference
- Conference date: June 13-14, 2025, Boston University Center for Computing and Data Sciences

## Org-mode Preferences
- Use #+PROPERTY: header-args :mkdirp yes for file operations
- Follow existing Org-mode structure with #+TITLE, #+AUTHOR, #+DATE headers
- Maintain consistent heading structure (*, **, ***)
- Use checkboxes [/] for task tracking

## Content Guidelines
- Maintain conference-specific organization per /README.org
- Keep speaker profiles, session notes, and action items in their respective directories
- Add any scripts to /src/scripts/ directory
- Data files should be stored in /src/data/

## Documentation Standards
- Add thorough comments to any scripts created
- Use descriptive, consistent naming for all files
- Include purpose and usage instructions at the top of each file
- When creating diagrams, use Mermaid format embedded in Org-mode