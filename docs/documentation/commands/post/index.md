---
title: ppl post Manual Page
layout: command
section: documentation
command: post
---

### Name

ppl post - List, show or change postal addresses

### Synopsis

    ppl post
    ppl post <contact>
    ppl post <contact> <address>
        -s, --street <street-address>
        -z, --postal-code <postal-code>
        -p, --po-box <po-box>
        -l, --locality <locality>
        -r, --region <region>
        -c, --country <country>
    ppl post <contact> <address> (-m | --move) <new-name>

### Description

With no arguments, the postal addresses of each contact in the address book are
listed.

If a just a `<contact>` is specified, the postal addresses of that contact are
shown.

If both a `<contact>` and an `<address>` are specified, an address will be
created or updated using the options provided.

Use the `-m` or `--move` flag to move an address to a new ID.

### Examples

    $ ppl post
    alice:  home, work
    jdoe:   home
    $ ppl post alice
    *  home  3701 Southwest 12th Street, Topeka, Kansas, USA
       work  123 Business Road, Businesstown, USA
    $ ppl post alice home
    3701 Southwest 12th Street
    Topeka
    Kansas
    USA
    $ ppl post alice home --country Canada
    $ ppl post alice home
    3701 Southwest 12th Street
    Topeka
    Kansas
    Canada

### See Also

* [color output](/documentation/configuration/color_post)

