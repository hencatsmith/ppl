---
title: ppl scrape Manual Page
layout: command
section: documentation
command: scrape
---

### Name

ppl scrape - Scrape contact details from an email in `stdin`

### Synopsis

    ppl scrape [<options>]
        -q, --quiet        Add contacts to the address book without prompting
        -s, --sender       Scrape the sender's contact details

### Description

Reads an email message from stdin and scrapes contact information from it into
the address book. By default nothing will be scraped; the command must be told
explicitly which information to scrape via its arguments.

If the `--sender` option is used, then the details of the person in the email's
`From:` header will be scraped into the address book.

If the `--quiet` option is used, the command will not prompt the user to confirm
whether they approve of each contact before saving them to the address book.

This command is analogous to [abook](http://abook.sourceforge.net/)'s
`--add-email` functionality. Both the confirmation prompt and the `--quiet` flag
are provided with the intention of achieving feature parity with this part of
abook.

### Examples

    ppl scrape --sender --quiet < ~/Mail/cur/1234.example.org

