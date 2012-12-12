---
title: ppl email Manual Page
layout: command
section: documentation
command: email
---

### Name

ppl email - Set a contact's email address

### Synopsis

    ppl email <contact> <email-address>

### Description

Stores the given email address as the contact address of the specified contact.
The `<contact>` parameter must correspond to the ID of an existing contact in
the address book. No validation is performed against the `<email>` parameter, so
go nuts.

### Examples

    ppl email jdoe jdoe@example.org

