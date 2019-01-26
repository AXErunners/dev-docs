{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/setbip69enabled.md" %}

##### SetBIP69Enabled
{% include helpers/subhead-links.md %}

{% assign summary_setBIP69Enabled="enables or disables BIP69 input/output sorting (regtest network only)" %}

<!-- __ -->

{% autocrossref %}

The `setbip69enabled` RPC {{summary_setBIP69Enabled}}

*Parameter #1---enable/disable BIP69 sorting (regtest only)*

{% itemplate ntpd1 %}
- n: "`enable`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "Set to true to turn on BIP69 sorting, false to turn off."

{% enditemplate %}

*Result---`null` or error on failure*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "null"
  p: "Required<br>(exactly 1)"
  d: "JSON `null`.  The JSON-RPC error field will be set only if you entered an invalid parameter"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli -testnet setbip69enabled true
{% endhighlight %}

Result (no output<!--noref--> from `axe-cli` because result is set to `null`).

*See also: none*

{% endautocrossref %}
