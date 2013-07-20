---
title: ppl name Manual Page
layout: command
section: documentation
command: name
---

### Name

ppl name - List, show or change names

### Synopsis

    ppl name
    ppl name <contact>
    ppl name <contact> <name>
        -f, --family <family-name(s)>
        -g, --given  <given-name(s)>
        -m, --middle <middle-name(s)>
        -p, --prefix <prefix>
        -s, --suffix <suffix>

### Description

With no arguments, the full names of each contact in the address book are
listed.

If a `<contact>` is specified, the full name of that contact is shown.

If both a `<contact>` and a `<name>` are given, then the name is stored as the
full name of the contact.

### Examples

    $ ppl name jdoe "John Doe"
    $ ppl name adam "Adam West" --family West -g Adam
    $ ppl name jdoe
    John Doe
    $ ppl name
    adam:  Adam West
    jdoe:  John Doe

### See Also

* [color output](/documentation/configuration/color_name)
