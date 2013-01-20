---
title: ppl nick Manual Page
layout: command
section: documentation
command: nick
---

### Name

ppl nick - List, show or change nicknames

### Synopsis

    ppl nick
    ppl nick <contact>
    ppl nick <contact> <nickname>
    ppl nick <contact> (-d | --delete) <nickname>

### Description

With no arguments, the nicknames of each contact in the address book are listed.

If a `<contact>` is specified, their nicknames are shown. If both a `<contact>`
and a `<nickname>` are given, then the nickname is added to the contact. If the
`--delete` or `-d` flag is set, then the given `<nickname>` is
deleted from the specified `<contact>`.

### Examples

    $ ppl nick jdoe Johnny
    $ ppl nick fred Freddy
    $ ppl nick jdoe
    Johnny
    $ ppl nick
    fred:  Freddy
    jdoe:  Johnny

