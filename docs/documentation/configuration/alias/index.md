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

### Planned Functionality

While this may look similar to git's alias system, it's not yet as complete.
Only pure command names can be aliased at this point. There is not yet any
support, for example, for aliasing commands *with* arguments or shell commands.
The plan is to add this functionality eventually though.

