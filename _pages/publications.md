---
layout: archive
title: "Journal Articles"
permalink: /publications/
author_profile: true
---

{% if author.googlescholar %}
  You can also find my articles on <u><a href="{{author.googlescholar}}">my Google Scholar profile</a>.</u>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  
  {{ post.published_at | date: "%a, %b %d, %y" }}
  {% include archive-single.html %}
{% endfor %}
