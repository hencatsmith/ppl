---
title: ppl org Manual Page
layout: command
section: documentation
command: org
---

### Name

ppl org - List, show or change organizations

### Synopsis

    ppl org
    ppl org <contact>
    ppl org <contact> <organization>
    ppl org <contact> (-d | --delete) <organization>

### Description

With no arguments, the organizations of each contact in the address book are
listed.

If a `<contact>` is specified, the organization of that contact is shown.

If both a `<contact>` and an `<organization>` are given, then the organization
is added to that contact's organizations.

It the `--delete` or `-d` flag is set, then the given `<organization>` is
deleted from the specified `<contact>`.

### Examples

    $ ppl org jdoe "Free Software Foundation"
    $ ppl org adam "Microsoft Corporation"
    $ ppl org jdoe
    Free Software Foundation
    $ ppl org
    adam:  Microsoft Corporation
    jdoe:  Free Software Foundation

