---
title: Bash Integration Guide
layout: integration
section: documentation
integration: bash
---

If you've ever used a command-line program like Git, you've probably used tab
completion before. For example, you type `git chec`, press the `<Tab>` key, and
bash automatically completes the rest of the command for you: `git checkout`.
Bash accomplishes this through the use of a [completion
function](http://tldp.org/LDP/abs/html/tabexpansion.html), and the good news is
that there's one available for ppl.

There are plans to build a more streamlined integration process than this, but
for now, here's how to set up autocompletion for ppl in Bash.

### 1. Download the completion function

    $ wget "https://raw.github.com/h2s/ppl/master/completions/bash" -O ppl

Use a command such as the above to obtain a copy of the latest completion
function code.

### 2. Install the completion function

    $ sudo mv ppl /etc/bash_completion.d/

In order for Bash to be able to use the code, it needs to be placed in the
correct location in the file system. If you're a Linux user, that's probably the
`/etc/bash_completion.d` directory.

