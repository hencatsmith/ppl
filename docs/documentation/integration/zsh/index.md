---
title: ZSH Integration Guide
layout: integration
section: documentation
integration: zsh
---

Similarly to the [Bash completion](/documentation/integration/bash/)
functionality also available, ppl comes ready with a ZSH completion function as
well. Here's how to get it set up:

### 1. Download the completion function

    $ wget "https://raw.github.com/h2s/ppl/master/completions/zsh" -O ppl

Use a command such as the above to obtain a copy of the latest completion
function code.

### 2. Install the completion function

    $ sudo mv ppl /usr/share/zsh/site-functions/

Depending on your choice of operating system, the target directory in the above
code may differ. The above is certainly correct for Arch Linux, but on Debian,
for example, the target would be `/usr/local/share/zsh/site-functions/`.

