---
title: Changelog
layout: development
section: development
---

<dl class="version-history">
{% for post in site.categories.changelog %}
  <dt>
    <a href="{{ "/development/changelog/" | append: post.title | relative_url }}">
      {{post.title}}
    </a>
  </dt>
  <dd>
    {{post.summary}}
  </dd>
{% endfor %}
</dl>
