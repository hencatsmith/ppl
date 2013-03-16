---
title: ppl [color] Configuration Guide
layout: configuration
section: documentation
config_section: color
---

By default, ppl's commands output plain text with no [ANSI color escape
codes](http://en.wikipedia.org/wiki/ANSI_escape_code). This is good in terms of
ppl being a well-behaved, pipeable UNIX CLI program, but some people like a bit
more color in their life, and this section of the config file allows those
people to selectively enable color output on a per-command basis.

### Enable color for all commands that support it

    [color]
            age   = true
            bday  = true
            email = true
            ls    = true
            name  = true
            nick  = true
            org   = true
            phone = true
            post  = true
            show  = true
            url   = true

### List of supported colors

* black
* blue
* cyan
* green
* magenta
* red
* white
* yellow

### Unsupported commands

The [mutt](/documentation/commands/mutt) command doesn't support color output
and never will. It'd be completely pointless.

The [show](/documentation/commands/show) command doesn't, either, but this is
due to be added sometime soon.

