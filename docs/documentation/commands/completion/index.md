---
title: ppl completion Manual Page
layout: command
section: documentation
command: completion
---

### Name

ppl completion - Output a completion function for shell integration

### Synopsis

    ppl completion <shell>

### Description

Output a shell autocomplete function to enable automatic completion of commands

The following shells are supported:

* `bash`
* `zsh`

### Examples

    $ ppl completion bash
    _ppl()
    {
      ....
    }
    complete -F _ppl ppl

### See Also

* [Bash Integration Guide](/documentation/integration/bash)
* [ZSH Integration Guide](/documentation/integration/zsh)

