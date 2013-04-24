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
        --pretty <preset>  specify a preset output format

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
    %a   Age
    %b   Birthday
    %k   Nickname      (first)
    %e   Email address (preferred/first)
    %p   Phone number  (preferred/first)
    %o   Organization  (first)

Commonly used output formats can be stored in `~/.pplconfig` and invoked by name
using the `--pretty` option. For example, the following configuration would
allow the format to be used by running `ppl ls --pretty age_info`.

    [pretty]
        age_info = "%i: %a (%b)"

### Examples

    $ ppl ls
    jdoe: John Doe <jdoe@example.org>
    kdoe: Kent Doe <kdoe@example.org>

### See Also

* [color output](/documentation/configuration/color_ls)

