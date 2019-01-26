{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/preciousblock.md" %}

##### PreciousBlock
{% include helpers/subhead-links.md %}

<!-- __ -->

{% assign summary_preciousBlock="treats a block as if it were received before others with the same work." %}

{% autocrossref %}

*Added in Axe Core 0.12.3 / Bitcoin Core 0.14.0*

The `preciousblock` RPC {{summary_preciousBlock}} A later `preciousblock` call can override the effect of an earlier one. The effects of `preciousblock` are not retained across restarts.

*Parameter #1---the block hash*

{% itemplate ntpd1 %}
- n: "Header Hash"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of the block to mark as precious"

{% enditemplate %}

*Result---`null` or error on failure*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "null"
  p: "Required<br>(exactly 1)"
  d: "JSON `null`.  The JSON-RPC error field will be set only if you entered an invalid block hash"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli preciousblock 00000000034d77e287b63922a94f12e8c4ab9e\
1d8056060fd51f6153ea5dc757
{% endhighlight %}

Result (no output from `axe-cli` because result is set to `null`).

{% endautocrossref %}
