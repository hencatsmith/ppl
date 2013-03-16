---
title: Roadmap
layout: development
section: development
---

### Proper UTF-8 Support

Right now, ppl's UTF-8 support is patchy at best. Ruby's newfound strictness
about combining strings of different encodings is causing a very nasty fatal
error in many cases involving UTF-8 characters. Fixing this bug is absolutely
vital for truly supporting unicode. Until then, ppl's usefulness for non English
speakers is embarrassingly lacklustre.

