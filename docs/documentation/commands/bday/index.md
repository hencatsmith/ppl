---
title: ppl bday Manual Page
layout: command
section: documentation
command: bday
---

### Name

ppl bday - Set a contact's birthday

### Synopsis

    ppl bday <contact> <date>

### Description

Stores the given date as the date of birth of the specified contact. The
`<contact>` parameter must correspond to the ID of an existing contact in the
address book. The `<date>` parameter must be a valid date string parseable by
Ruby's
[Date.parse](http://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html\#method-c-parse)
function.

### Examples

    ppl bday jdoe 1970-01-01

### See Also

[Date.parse](http://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html\#method-c-parse)

