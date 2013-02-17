---
title: ppl push Manual Page
layout: command
section: documentation
command: push
---

### Name

ppl push - Execute `git push` in the address book directory

### Synopsis

    ppl push <remote> <branch>

### Description

This command is an alias of `git push`. It is intended to make it more
convenient to use git to synchronise your address book. See the documentation
for [git pull](/documentation/commands/pull) for more details.

Note that this command literally executes the git command `push` in the address
book directory. If you don't have the git CLI tool installed, this command will
not work.

### Examples

    $ ppl push origin master
    Everything up-to-date.

### See Also

* [git push](http://git-scm.com/docs/git-push)
* [ppl pull](/documentation/commands/pull)
* [ppl remote](/documentation/commands/push)

