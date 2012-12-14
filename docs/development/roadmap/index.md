---
title: Roadmap
layout: development
section: development
---

### Richer Dataset

As of 1.0.0, the set of contact data storable in ppl is fairly rudimentary. The
big priority for the near future is to augment this aspect of the program.

Instead of a single email address or phone number per contact, support for zero
or more of each is needed. And support for zero or more postal addresses as
well. Other scalar properties will be supported too, such as URLs and job
titles.

### Improved Configurability

There are a few git-like CLI features that would be desirable. The ability to
colorize the output of certain commands such as "ls" or "show" is a good
example. Support for aliases is also in the pipeline.

### Synchronization UX

While using git as the storage engine enables a nice decentralized approach to
managing contacts, ppl does not yet offer any help with this. Pushing, pulling
and merging are operations for which users must drop back into regular git
commands.

It would be good to implement some sort of "ppl sync" command to automate as
much of this as possible. Right now, I'm not aware of any git wrapper for Ruby
that facilitates pushing and pulling of commits though.

