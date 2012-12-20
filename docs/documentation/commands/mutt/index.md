---
title: ppl mutt Manual Page
layout: command
section: documentation
command: mutt
---

### Name

ppl mutt - Integration with mutt's query_command

### Synopsis

    ppl mutt <query>

### Description

Searches the names and email addresses in the address book for the given
`<query>` string and returns a list of results formatted for compatibility with
[mutt's query_command
option](http://www.mutt.org/doc/manual/manual-4.html#ss4.5).

This is intended to enable mutt users to integrate ppl as the search backend for
recipient autocompletion.

### Examples

Put the following in your `~/.muttrc`:

    set query_command = "ppl mutt '%s'"


