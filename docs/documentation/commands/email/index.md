---
title: ppl email Manual Page
layout: command
section: documentation
command: email
---

### Name

ppl email - List, show or change email addresses

### Synopsis

    ppl email
    ppl email <contact>
    ppl email <contact> <email-address>

### Description

With no arguments, the email addresses of each contact in the address book are
listed.

If a `<contact>` is specified, the email addresses of that contact are shown.

If both a `<contact>` and an `<email-address>` are given, then the address is
added to the email addresses of the contact.

### Examples

    $ ppl email jdoe jdoe@example.org
    $ ppl email adam adam@example.com
    $ ppl email jdoe
    jdoe@example.org
    $ ppl email
    adam:  adam@example.com
    jdoe:  jdoe@example.org

