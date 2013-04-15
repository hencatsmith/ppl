---
title: Mutt Integration Guide
layout: integration
section: documentation
integration: mutt
---

The [Mutt E-Mail Client](http://www.mutt.org/) supports the use of external
address book programs as a source of [email address autocompletion
suggestions](http://www.mutt.org/doc/manual/manual-4.html#ss4.5). You can use
this to integrate ppl into mutt by adding the following to your `~/.muttrc`:

    set query_command = "ppl mutt '%s'"

With that configured, you can then invoke ppl from within mutt as a means of
quickly finding email addresses by pressing `Q` in the index menu, or by
pressing `^T` in any prompt for address entry.

