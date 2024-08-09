---
title: ppl shell Manual Page
layout: command
section: documentation
command: shell
---

### Name

ppl shell - Interactive mode

### Synopsis

    ppl shell

### Description

Opens ppl in interactive mode, allowing users to skip typing "ppl" at the start
of every single command. This is intended to be useful in the case of longer
sessions, when a user plans to interact with ppl many times and wants to avoid
some of the repetition.

In interactive mode, all the ppl commands work as normal. The only difference is
that there is no need to prefix every command with `ppl`. So instead of typing
`ppl ls`, in interactive mode you would just type `ls`.

To exit interactive mode, type `exit`, or send a `sigint` or `eof` (Ctrl+C or
Ctrl+D usually).

### Examples

    $ ppl shell
    ppl 1.5.2 (type "exit" to leave)
    ppl> ls
    jdoe: John Doe <jdoe@example.org>
    kdoe: Kent Doe <kdoe@example.org>
    ppl> exit
    $

