
ppladdressbook.org
==================

The official documentation of the [ppl address
book](https://github.com/h2s/ppl) project.

Contributing
------------

#### 1. Fork It

You know what to do. Hit that big 'ol Fork button up there in the top right.

#### 2. Clone It

    git clone git@github.com:[YOUR-DUMB-GITHUB-NAME-HERE]/ppladdressbook.org.git

#### 3. Write It

Real Programmers Use Ed

```bash
$ cd ppladdressbook.org
$ ed _posts/2015-05-01-make-ppl-dance.md
_posts/2015-05-01-make-ppl-dance.md: No such file or directory
a
---
title: Make ppl Dance
date: 2015-05-01
layout: tip
categories: [tips]
permalink: /documentation/tips/make-ppl-dance
author_name: h2s
author_url: http://henrysmith.org
---

Here's how to make ppl dance. First, you set up .... bla bla bla .... etc etc

.
wq
```

#### 4. Check It

You need to rebuild the site and take a good look at your work before submitting
it. This documentation is built using [jekyll](http://jekyllrb.com/), so you'll
be needing all the usual Ruby + Rubygems setup.

```bash
$ bundle install     # you should only need to do this once
$ bundle exec jekyll # repeat this as often as necessary to rebuild
```

#### 5. Push It

```bash
$ git commit -am "YOLO" && git push -f origin master
```

Note: please actually write a sensible commit message. Once you're happy with
all of this, come back to GitHub and send a pull request.

Guidelines
----------

#### Proofread

I *really* don't mind fixing people's spelling and grammar. We all make
mistakes. But give your written work a quick proofread or two anyway just for
the practice. I'm trying to strike a balance here: I don't want people to be
discouraged by their lack of confidence in English writing, but I do still want
them to do their best regardless of their skill level.

#### Style

Bear in mind that this is documentation, and those reading it are not
necessarily experts in any particular field. If you're explaining basic
functionality, steer clear of complex language where possible. That being said,
don't be discouraged from submitting some really complex alias hack if you've
come up with something cool. Not everything has to be for newbies!

#### Licensing

Anything you submit will be licensed under the [GNU
FDL](http://www.gnu.org/copyleft/fdl.html). Hopefully you agree that this is a
good thing!

