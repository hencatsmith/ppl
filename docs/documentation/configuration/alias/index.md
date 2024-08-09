---
title: ppl [alias] Configuration Guide
layout: configuration
section: documentation
config_section: alias
---

Sometimes typing the same long commands repeatedly becomes tiresome. The
`[alias]` section is intended to address this issue by providing a means of
configuring shorter forms of commands.

    [alias]
        l = ls
        s = show

Adding the above lines to `~/.pplconfig` would allow the user to interact with
ppl as follows:

    $ ppl l
    jdoe: John Doe    <jdoe@example.org>
    fred: Fred Bloggs <fred@example.org>
    $ ppl s jdoe
    John Doe <jdoe@example.org>

      Birthday      1970-01-01
      Organization  Example Organization

    Email Addresses
      jdoe@example.org

### Bang Aliases

ppl's alias system is similar to git's in that it supports executing external
commands via aliases prefixed with an exclamation mark, or "bang". In your
`~/.pplconfig`, this would look something like the following:

    [alias]
        lsx = !ppl ls | grep -i x

The above example creates an alias `lsx` that pipes the output of [ppl
ls](/documentation/commands/ls) through `grep -i x`. This means that you
effectively create a new command - `ppl lsx` - which is identical to `ppl ls`
except that it only displays lines containing the letter x.


