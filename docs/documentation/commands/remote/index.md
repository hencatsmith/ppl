---
title: ppl remote Manual Page
layout: command
section: documentation
command: remote
---

### Name

ppl remote - Execute `git remote` in the address book directory

### Synopsis

    ppl remote [-v | --verbose]
    ppl remote rename <old> <new>
    ppl remote rm <name>

### Description

This command is an alias of `git remote`. It is intended to make it more
convenient to use git to synchronise your address book. See the documentation
for [git pull](/documentation/commands/pull) for more details.

Note that this command literally executes the git command `remote` in the
address book directory. If you don't have the git CLI tool installed, this
command will not work.

### Examples

    $ ppl remote
    origin
    github
    $ ppl remote rm github

### See Also

* [git remote](http://git-scm.com/docs/git-remote)
* [ppl pull](/documentation/commands/pull)
* [ppl push](/documentation/commands/push)

