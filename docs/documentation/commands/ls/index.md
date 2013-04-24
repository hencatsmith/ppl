---
title: ppl ls Manual Page
layout: command
section: documentation
command: ls
---

### Name

ppl ls - List all contacts

### Synopsis

    ppl ls [<options>]
        --format <format>  specify a custom output format
        --pretty <format>  specify a preset output format

### Description

List all the contacts in the address book.

### Formatting Options

Using the `--format` option, `ppl ls` can be customized to produce output in a
user-specified format. This is similar functionality to `printf` or the
customizability of other software such as [git
log](http://git-scm.com/docs/git-log). Here are the placeholders.

    %n   Newline
    %i   Contact ID
    %N   Name
    %b   Birthday

### Examples

    $ ppl ls
    jdoe: John Doe <jdoe@example.org>
    kdoe: Kent Doe <kdoe@example.org>

### See Also

* [color output](/documentation/configuration/color_ls)

