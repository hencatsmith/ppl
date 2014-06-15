---
title: Set Up Color Output
date: 2013-04-16
layout: tip
categories: [tips]
permalink: /documentation/tips/set-up-color-output
author_name: urael
author_url: http://henrysmith.org/
---

ppl provides a system for configuring the output of many of its commands in a
way that's almost identical to git's color output configuration. While not an
essential piece of functionality, a small amount of color can go a long way
towards improving your experience using ppl.

Personally, I try to rein in the temptation to go to town and assign a color to
absolutely everything. My `~/.pplconfig` simply colorizes all contact IDs in all
output, highlighting them in cyan to maximize their visibility.

<pre><code>$ ppl ls</code>
<code><span style="color: #2AA198;">alice:</span>  Alice  alice@example.org</code>
<code><span style="color: #2AA198;">bob:</span>    Bob    bob@example.org</code>
<code><span style="color: #2AA198;">eve:</span>    Eve    eve@example.org</code></pre>

Configuring ppl to colorize the output of ls like in the above example is
extremely easy, and will be especially familiar to you if you're already used to
configuring git. Here are the exact config file contents necesssary to show
contact IDs in cyan in the output of [ppl ls](/documentation/commands/ls).

    [color]
        ls = true

    [color "ls"]
        id = cyan

Simply add the above to your `~/.pplconfig`, run `ppl ls`, and you should see
contact IDs in cyan. If not, double-check whether you're running an up-to-date
version of ppl. This feature has been supported since `1.15.0`, making it only
about a month old at the time of writing.

Now that you know the basic gist of how to configure color, you'll probably be
glad to know that there's some fairly extensive [reference documentation for this
functionality](/documentation/configuration/color), including a [list of
supported colors](/documentation/configuration/color/#list_of_supported_colors)
and an example for each command which shows the [full list of configurable text
elements](/documentation/configuration/color_ls).

