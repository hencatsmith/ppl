---
title: ppl [address book] Configuration Guide
layout: configuration
section: documentation
config_section: address book
---

### path

    [address book]
        path = ~/contacts

By default, ppl determines the location of the address book based on the user's
[working directory](http://en.wikipedia.org/wiki/Working_directory). This value
overrides that behaviour and sets a particular directory as the location of the
address book regardless of the working directory.

This is intended for the typical use-case where a user of ppl only has one
address book. The purpose is to increase the convenience of using ppl with that
single address book by removing the requirement that the user first navigate to
its directory before reading from or writing to it.

