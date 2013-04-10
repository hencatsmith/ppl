---
title: Changelog
layout: development
section: development
---

### 1.15.1

Heralding support for Ruby 2.0 and beyond, this version of ppl also sees the
replacement of the vpim gem dependency with greencard. See the [news
post](/news/ruby-2.0-compatibility/) for more details.

### 1.15.0

This adds support for colourised output to most ppl commands. The following
commands are affected by this change:

* [age](/documentation/configuration/color_age)
* [bday](/documentation/configuration/color_bday)
* [email](/documentation/configuration/color_email)
* [ls](/documentation/configuration/color_ls)
* [name](/documentation/configuration/color_name)
* [nick](/documentation/configuration/color_nick)
* [org](/documentation/configuration/color_org)
* [phone](/documentation/configuration/color_phone)
* [post](/documentation/configuration/color_post)
* [url](/documentation/configuration/color_url)

Internally, this release depends on two new gems:

* [morphine](https://github.com/bkeepers/morphine)
* [colored](https://github.com/defunkt/colored)

### 1.14.1

The release of `1.14.0` exposed a small screw-up in ppl's alias support. The
`[alias]` section of the `~/.pplconfig` file was not being picked up at all.
Instead it was looking for a section called `[aliases]`, which was insconsistent
with the documentation and with git, on which the functionality is based. This
release, therefore, is a fix for this issue: an `[alias]` section in
`.pplconfig` should now work as described.

* Fixed `[alias]` configuration

### 1.14.0

Hot on the heels of `1.13.0`, this release brings the git-style bang alias
functionality facilitated by the previous release's code changes. This allows
the creation of aliases which execute a shell command.

* Add bang alias support

### 1.13.0

The result of a lot of thought, this is the long-awaited git synchronisation
functionality. What's been added are three new commands,
[pull](/documentation/commands/pull), [push](/documentation/commands/push), and
[remote](/documentation/commands/remote). These commands have no behaviour of
their own, and are effectively aliases that execute their git counterparts
inside the address book's directory.

I think that this functionality is a good compromise: synchronising address book
data can be accomplished using simple, familiar commands such as `ppl pull
origin master`, and ppl itself is not unduly burdened with duplicating any git
functionality.

Another positive outcome of this work is that it brings proper git-style "bang"
aliases closer to being a reality. The code changes required for these three
commands lay a lot of the foundations necessary for bang aliases.

* Added `ppl pull` command
* Added `ppl push` command
* Added `ppl remote` command

### 1.12.0

This release adds the [age](/documentation/commands/age) command, which provides
easy access to the ages of all contacts based on their dates of birth.

* Added `ppl age` command

### 1.11.0

This is a simple release that just adds new functionality in the form of support
for another vCard property: [nicknames](/documentation/commands/nick).

* Added `ppl nick` command

### 1.10.0

A lot of the work in this release went into some much-needed refactoring as a
precautionary measure against accumulating too much technical debt early on. The
code reuse enabled by this refactor facilitated the addition of some key
functionality, too.

* Added support for storing multiple organizations with `ppl org` command
* Added support for storing multiple phone numbers with `ppl phone` command
* Added support for deleting phone numbers with `ppl phone` command

### 1.9.0

This release adds two new features: the [version
command](/documentation/commands/version), and support for
[aliases](/documentation/configuration/alias). Both features function similarly
to their git counterparts, albeit in a less complete way. For now the aliasing
only supports simple aliasing of plain command names, and doesn't allow things
like aliasing long chains of arguments or git's `!f() {}` style commands. These
things will come in time.

* Added `ppl version` command
* Added rudimentary alias support

### 1.8.0

Added another attribute that contacts often have: URLs. For example, a given
contact may have a profile page on some social network, a personal website, or
any number of different possibilities. The new comand, [ppl
url](/documentation/commands/url), works similarly to [ppl
email](/documentation/commands/email) and allows you to store these URLs in your
address book.

* Added `ppl url` command

### 1.7.0

This version contains some fairly substantial changes to the way the [ppl
show](/documentation/commands/show) command formats its output. The need for
this change was unearthed by a [question from
@storge](https://github.com/h2s/ppl/issues/14) on GitHub. In short, the command
was only showing one of the given contact's email addresses, giving the
impression that this was all that ppl supported storing.

* Improved the output format of `ppl show`

### 1.6.0

This release contains a bugfix and the means for users to undo the minor damage
caused by the bug. The bug was causing every new email address added by users to
be saved against the contact *twice*. The fix stops that from happening. And a
new feature has been added in the form of a `--delete` flag for [ppl
email](/documentation/commands/email) so that dupliate addresses can be removed.

* Fixed a bug causing duplicate email addresses to be saved
* Added `--delete` flag to `ppl email`

### 1.5.3

There have been a lot of internal changes in this release, and one user-facing
change to improve the error message when a non-existent contact is specified in
a command.

Before this change, non-existent contacts resulted in a fairly cryptic error
message consisting only of the given non-existent contact ID. From now on the
problem is actually explained to the user.

* Added a proper error message when a non-existent contact is specified

### 1.5.2

Another very small, very minor release addressing a usability issue with [ppl
shell](/documentation/commands/shell).

* Add "welcome" message to `ppl shell` explaining how to quit
* Don't show "ppl>" prompt in `ppl shell` if stdin isn't a tty

### 1.5.1

This is a very small release to fix one very small bug.

* Fix fatal error in `ppl post <contact>` when contact has no address

### 1.5.0

The addition of "interactive mode" in the form of [ppl
shell](/documentation/commands/shell). Thanks to
[@axelGschaider](https://github.com/axelGschaider) on GitHub for [the
suggestion](https://github.com/h2s/ppl/issues/7). This ought to make life a lot
easier for people entering lots of commands at once!

* Added `ppl shell` command

### 1.4.1

This version is a first step towards removing the annoying limitation of one
email address, postal address and so on per contact. This isn't glamorous work
but it's vital functionality.

The ability to add more than one email address to a contact has been added. This
is not 100% complete: email addresses cannot yet be deleted, for example. And
[ppl show](/documentation/commands/show) does not yet show all the addresses
(only [ppl email](/documentation/commands/email) does for now). But at least
it's now possible to store the data

* Contacts can now have more than one email address

### 1.3.0

Adds support for XDG-compatible configuration. Many thanks to
[@tijn](https://github.com/h2s/ppl/issues/4) on GitHub for [recommending this
functionality](https://github.com/h2s/ppl/issues/4).

This means ppl can now be alternatively configured using a file at
`~/.config/ppl/config`. If you like keeping your `~/` free of dotfile clutter
then this is good news. If not, don't worry, `~/.pplconfig` continues working as
normal.

* Add support for XDG-compatible configuration file location

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

