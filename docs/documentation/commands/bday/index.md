---
title: ppl bday Manual Page
layout: command
section: documentation
command: bday
---

### Name

ppl bday - List, show or change birthdays

### Synopsis

    ppl bday
    ppl bday <contact>
    ppl bday <contact> <date>

### Description

With no arguments, the dates of birth of each contact in the address book are
listed.

If a `<contact>` is specified, the date of birth of that contact is shown.

If both a `<contact>` and a `<date>` are given, then the date is stored as the
date of birth of that contact. The `<date>` parameter must be a valid date
string parseable by Ruby's
[Date.parse](http://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html\#method-c-parse)
function.

### Examples

    $ ppl bday jdoe 1970-01-01
    $ ppl bday adam 1975-06-01
    $ ppl bday jdoe
    1970-01-01
    $ ppl bday
    adam:  1975-06-01
    jdoe:  1970-01-01

### See Also

* [Date.parse](http://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html\#method-c-parse)
* [color output](/documentation/configuration/color_bday)
