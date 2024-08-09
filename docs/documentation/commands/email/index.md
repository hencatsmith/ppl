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
        -d, --delete           delete email address
        -p, --preferred        mark as preferred
        -P, --not-preferred    mark as not preferred
            --format <format>  specify a custom output format

### Description

With no arguments, the email addresses of each contact in the address book are
listed.

If a `<contact>` is specified, the email addresses of that contact are shown.

If both a `<contact>` and an `<email-address>` are given, then the address is
added to the email addresses of the contact.

It the `--delete` or `-d` flag is set, then the given `<email-address>` is
deleted from the specified `<contact>`.

The `--preferred` and `--not-preferred` flags are for marking a given email
address as "preferred" or not. Internally, this status is represented with
vCard's `TYPE=pref` parameter in the `EMAIL` field. Preferred email addresses
are shown with a `*` next to them in the output of `ppl email <contact>`.

### Formatting Options

Using the `--format` option, it is possible to customize the output of `ppl
email` in several ways. This customizability is similar in usage to a typical
`printf` function or [`git log`](http://git-scm.com/docs/git-log)'s own
`--format` option. Here are the placeholders and their values.

    %n   Newline
    %a   Email address
    %f   Preferred status ("*" if preferred)

### Examples

    $ ppl email jdoe jdoe@example.org --preferred
    $ ppl email adam adam@example.com
    $ ppl email jdoe
    *  jdoe@example.org
    $ ppl email
    adam:  adam@example.com
    jdoe:  jdoe@example.org

### See Also

* [color output](/documentation/configuration/color_email)

