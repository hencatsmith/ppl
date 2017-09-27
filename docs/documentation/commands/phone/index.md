---
title: ppl phone Manual Page
layout: command
section: documentation
command: phone
---

### Name

ppl phone - List, show or change phone numbers

### Synopsis

    ppl phone
    ppl phone <contact>
    ppl phone <contact> <phone-number>
    ppl phone <contact> <phone-number>
        -d, --delete         delete phone number
        -t, --type <type>    set the number's type
        -p, --preferred      mark as preferred
        -P, --not-preferred  mark as not preferred

### Description

With no arguments, the phone numbers of each contact in the address book are
listed.

If a `<contact>` is specified, the phone number of that contact is shown.

If both a `<contact>` and a `<phone-number>` are given, then the number is added
to the contact's phone numbers.

It the `--delete` or `-d` flag is set, then the given `<phone-number>` is
deleted from the specified `<contact>`.

Use the `--type <type>` option to assign a type to the phone number. You can use
this option both when adding a new number or to amend an existing number.

The `--preferred` and `--not-preferred` flags are for marking a given phone
number as "preferred" or not. Internally, this status is represented with
vCard's `TYPE=pref` parameter in the `TEL` field. Preferred phone numbers are
shown with a `*` next to them in the output of `ppl phone <contact>`.

### Examples

    $ ppl phone jdoe 0123456789 --type cell
    $ ppl phone adam 0777111222
    $ ppl phone jdoe
    0123456789 (cell)
    $ ppl phone
    adam:  0777111222
    jdoe:  0123456789

### See Also

* [color output](/documentation/configuration/color_phone)
