---
title: ppl pull Manual Page
layout: command
section: documentation
command: pull
---

### Name

ppl pull - Execute `git pull` in the address book directory

### Synopsis

    ppl pull <remote> <branch>

### Description

This command is an alias of `git pull`. It is intended to make it more
convenient to use git to synchronise your address book. The rationale is that it
is tiresome to have to type `cd ~/contacts` and then `git pull origin master`.
Assuming you have configured ppl to [remember the location of your address
book](/documentation/configuration/address_book), then `ppl pull origin master`
is the equivalent of those two commands.

Note that this command literally executes the git command `push` in the address
book directory. If you don't have the git CLI tool installed, this command will
not work.

### Examples

    $ ppl pull origin master
    Already up-to-date.

### See Also

* [git pull](http://git-scm.com/docs/git-pull)
* [ppl push](/documentation/commands/push)
* [ppl remote](/documentation/commands/push)

