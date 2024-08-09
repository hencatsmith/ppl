---
title: Mutt Integration Guide
layout: integration
section: documentation
integration: mutt
---

The [Mutt E-Mail Client](http://www.mutt.org/)

### Email Address Autocompletion

Mutt supports the use of external address book programs as a source of [email
address autocompletion
suggestions](http://www.mutt.org/doc/manual/manual-4.html#ss4.5).  You can use
this to integrate ppl into mutt by adding the following to your `~/.muttrc`:

    set query_command = "ppl mutt '%s'"

With that configured, you can then invoke ppl from within mutt as a means of
quickly finding email addresses by pressing `Q` in the index menu, or by
pressing `^T` in any prompt for address entry.

### Quickly Adding New Contacts

If you have a lot of email to deal with, you may find it tedious to have to add
each new email contact to your address book manually. With a macro like the
following in your `~/.muttrc`, adding the sender of the currently selected email
is as simple as pressing the `a` key.

    macro index,pager a "<pipe-message>ppl scrape --sender<return>"

This macro uses the [scrape](/documentation/commands/scrape) command to pull out
the sender's email address and name (if available), and adds them to the address
book.

