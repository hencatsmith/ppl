---
title: Two Months In
date: 2013-02-17
layout: news
section: news
---

It's been almost two months now since the big day of [ppl's public
release](news/thank-you-for-your-all-your-feedback/). In that time, development
has continued at a more steady, sustainable pace than during the period leading
up to the release itself. New functionality has been added, and a few bugs have
been fixed, as [the changelog](/development/changelog) will attest.

One particularly nasty bug has been reported whose solution eludes me for the
moment. It seems ppl does not cope well with [non-ASCII
characters](https://github.com/h2s/ppl/issues/17). The error itself is coming
from within vpim - although it is almost certainly not a vpim bug - and is
proving a tough nut to crack. Encodings in Ruby 1.9 are [fraught with
complexity](http://yehudakatz.com/2010/05/05/ruby-1-9-encodings-a-primer-and-the-solution-for-rails/),
but I'm optimistic about the existence of a simple solution.

On a more positive note, it's worth mentioning that the overall health of the
project seems to be good. I continue to enjoy building and maintaining ppl, and
public interest in a command-line address book is as strong as could be expected
for such a niche piece of software. Thanks for all your patience and support!

