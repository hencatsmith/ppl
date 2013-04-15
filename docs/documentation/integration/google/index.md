---
title: Google Integration Guide
layout: integration
section: documentation
integration: google
---

Many people have a large set of address book data stored in Google Contacts,
usually under the hood of GMail itself. If you fall in this category, and you
want to copy over that data as a starting point for your ppl address book, you
have a few options thanks to the enterprising work of some generous ppl users.

### gv-contacts

Part of an npm package called [gv](https://github.com/matthewp/gv-app/), the `gv
contacts` command is a way of importing contacts directly from your Google
account into ppl. It imports contacts' names, phone numbers and email addresses. 

### goog2ppl

[goog2ppl](https://github.com/shushcat/goog2ppl) is a python script for
converting a contacts.vcf file [exported from
Google](http://support.google.com/mail/answer/24911?hl=en) and breaking it up
into pieces suitable for initialization as the contents of a ppl address book
directory.

