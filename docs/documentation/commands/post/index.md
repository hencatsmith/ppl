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
    ppl post <contact>
        -s, --street <street-address>
        -z, --postal-code <postal-code>
        -p, --po-box <po-box>
        -l, --locality <locality>
        -r, --region <region>
        -c, --country <country>

### Description

With no arguments, the postal addresses of each contact in the address book are
listed.

If a `<contact>` is specified and no address properties are specified, the
postal address of that contact is shown.

If both a `<contact>` and some address properties are given, then those
properties are stored as part of the postal address of that contact.

### Examples

    $ ppl post jdoe --street "1600 Pennsylvania Avenue Northwest"
    $ ppl post jdoe --postal-code 20500
    $ ppl post jdoe --locality "Washington, D.C."
    $ ppl post jdoe --country "USA"
    $ ppl post jdoe
    Street:       1600 Pennsylvania Avenue Northwest
    Postal Code:  20500
    Locality:     Washington, D.C.
    Region:       Peshawar
    Country:      USA
    $ ppl post
    alice:  3701 Southwest 12th Street, Topeka, Kansas, USA
    bob:    1600 Pennsylvania Avenue Northwest, Washington, D.C., USA, 20500

