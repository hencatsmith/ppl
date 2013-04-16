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

### Install the completion function globally

    $ ppl completion bash | sudo tee /etc/bash_completion.d/ppl

The [completion](/documentation/commands/completion) command simply outputs the
completion function code in its entirety. The above line pipes that code into
its rightful place in your system's Bash completion function config directory.


