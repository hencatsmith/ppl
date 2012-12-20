---
title: Changelog
layout: development
section: development
---

### 1.2.0

A relatively small release in terms of new functionality, `1.2.0` simply adds
the [ppl post](/documentation/commands/post) command. This command was always in
the pipeline, but thanks anways to
[nicky0](http://news.ycombinator.com/user?id=nicky0) on Hacker News for
[prompting me](http://news.ycombinator.com/item?id=4947468) to prioritise it
slightly.

* Added `ppl post` command

### 1.1.0

These are some very quickly added changes resulting from this morning's exposure
on [Hacker News](http://news.ycombinator.com/item?id=4947047). A few real
show-stopping bugs have been fixed, and a new feature has been added for mutt
users.

Many thanks to [@storge](https://github.com/storge) on GitHub for all the help
fixing the long series of issues in [Issue #1](https://github.com/h2s/ppl/issues/1). You absolute legend.

Also, thanks to [7h0ma5](http://news.ycombinator.com/user?id=7h0ma5) on HN for
the [mutt integration suggestion](http://news.ycombinator.com/item?id=4947256)
and the helpful documentation link. Support for usage as the backend to mutt's
`query_command` option has been added in the form of [ppl
mutt](/documentation/commands/mutt).

* Fixed missing dependency declaration in gemspec
* Fixed missing minimum ruby version in gemspec
* Fixed completely broken and useless `ppl init` command
* Added `ppl mutt` command

### 1.0.0

This is the first publicly-announced release. Since none of the previous
releases have been publicised in any way, it's assumed that nobody out there has
been using them.

This being the case, the changelog entry for `1.0.0` is effectively the set of
all changes since the non-existence of the program until this version. So let's
put that in list form as seems to be customary in changelogs:

* ppl now exists

