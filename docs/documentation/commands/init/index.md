---
title: ppl init Manual Page
layout: command
section: documentation
command: init
---

### Name

ppl init - Create an empty address book

### Synopsis

    ppl init [<directory>]

### Description

This command creates an empty ppl repository. It creates the specified directory
if it doesn't already exist, and initializes a git repository there.

If no `<directory>` parameter is explicitly specified, then the operation is
applied to the current working directory.

### Examples

    ppl init ~/contacts


