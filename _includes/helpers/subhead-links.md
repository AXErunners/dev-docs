{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}{% if filename %}<div class="subhead-links sourcefile" data-sourcefile="{{filename|uri_escape}}"
><a href="https://github.com/axe-docs/axe-docs/edit/master/{{filename|uri_escape}}">Edit</a>
| <a href="https://github.com/axe-docs/axe-docs/commits/master/{{filename|uri_escape}}">History</a>
| <a href="https://github.com/axe-docs/axe-docs/issues/new?body=Source%20File%3A%20{{filename|uri_escape}}%0A%0A">Report Issue</a>
| <a href="https://www.axe.org/forum/">Discuss</a></div>
{% else %}
{% die "source filename not set" %}
{% endif %}
