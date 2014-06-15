---
title: Sync Alias
date: 2013-04-15
layout: tip
categories: [tips]
permalink: /documentation/tips/sync-alias
author_name: urael
author_url: http://henrysmith.org/
---

If your ppl address book is cloned on multiple computers, you're probably
accustomed to using [pull](/documentation/commands/pull/) and
[push](/documentation/commands/pull/) to synchronise your data using Git. If so,
that's great. You're making the most of ppl's core functionality. But you could
probably be making more of its convenience-oriented features.

ppl allows you to configure [aliases](/documentation/configuration/alias/) as
shorcuts for often-used commands, or as a way of composing commands together.
Here's an alias called `sync` which does the latter.

    sync = !ppl pull origin master && ppl push origin master

This allows you to execute `git pull origin master` and then `git push origin
master` in your address book directory by simply entering `ppl sync`. For most
users, this probably automates the entire synchronisation process.

Bear in mind that this alias will only work if you keep your contacts on the
`master` branch and have a remote called `origin`. If your setup is more complex
than that, you may have to get creative with your aliases to achieve this level
of laziness.

