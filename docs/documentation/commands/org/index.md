---
title: ppl org Manual Page
layout: command
section: documentation
command: org
---

### Name

ppl org - Set the organization name of a contact

### Synopsis

    ppl org <contact> <organization>

### Description

Stores the given `<organization>` as the name of the organization to which the
specified `<contact>` belongs.  The `<contact>` parameter must correspond to the
ID of an existing contact in the address book. The `<organization>` may be any
string value.

### Examples

    ppl org jdoe "Free Software Foundation"

