---
title: ppl phone Manual Page
layout: command
section: documentation
command: phone
---

### Name

ppl phone - Set a contact's phone number

### Synopsis

    ppl phone
    ppl phone <contact>
    ppl phone <contact> <number>

### Description

With no arguments, the phone numbers of each contact in the address book are
listed.

If a `<contact>` is specified, the phone number of that contact is shown.

If both a `<contact>` and a `<phone-number>` are given, then the number is
stored as the phone number of the contact.

### Examples

    $ ppl phone jdoe 0123456789
    $ ppl phone adam 0777111222
    $ ppl phone jdoe
    0123456789
    $ ppl phone
    adam:  0777111222
    jdoe:  0123456789

