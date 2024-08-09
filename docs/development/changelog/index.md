---
title: Changelog
layout: development
section: development
---

<dl class="version-history">
{% for post in site.categories.changelog %}
  <dt>
    <a href="{{site.url}}/development/changelog/{{post.title}}">
      {{post.title}}
    </a>
  </dt>
  <dd>
    {{post.summary}}
  </dd>
{% endfor %}
</dl>
