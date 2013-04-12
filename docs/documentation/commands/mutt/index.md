---
title: ppl mutt Manual Page
layout: command
section: documentation
command: mutt
---

### Name

ppl mutt - Integration with mutt's query_command

### Synopsis

    ppl mutt [<options>] <query>
        -i, --ignore-case     Turn off case sensitivity

### Description

Searches the names and email addresses in the address book for the given
`<query>` string and returns a list of results formatted for compatibility with
[mutt's query_command
option](http://www.mutt.org/doc/manual/manual-4.html#ss4.5).

This is intended to enable mutt users to integrate ppl as the search backend for
recipient autocompletion.

If the `-i` flag is given, the search will be case-insensitive, ignoring case
differences between the query given and the contacts' names and email addresses.

### Examples

Put the following in your `~/.muttrc`:

    set query_command = "ppl mutt '%s'"


