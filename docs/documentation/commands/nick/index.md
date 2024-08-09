---
title: ppl nick Manual Page
layout: command
section: documentation
command: nick
---

### Name

ppl nick - List, show or change nicknames

### Synopsis

    ppl nick (--no-color)
    ppl nick <contact>
    ppl nick <contact> <nickname>
    ppl nick <contact> (-d | --delete) <nickname>

### Description

With no arguments, the nicknames of each contact in the address book are listed.

If a `<contact>` is specified, their nicknames are shown. If both a `<contact>`
and a `<nickname>` are given, then the nickname is added to the contact. If the
`--delete` or `-d` flag is set, then the given `<nickname>` is
deleted from the specified `<contact>`.

If the `--no-color` flag is set, then the list of nicknames will be printed
without any ANSI color escape codes, regardless of any configuration settings.

### Examples

    $ ppl nick jdoe Johnny
    $ ppl nick fred Freddy
    $ ppl nick jdoe
    Johnny
    $ ppl nick
    fred:  Freddy
    jdoe:  Johnny

### See Also

* [color output](/documentation/configuration/color_nick)

