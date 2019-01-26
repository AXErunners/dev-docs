{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getaccount.md" %}

##### GetAccount
{% include helpers/subhead-links.md %}

{% assign summary_getAccount="returns the name of the account associated with the given address." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

The `getaccount` RPC {{summary_getAccount}}

{{WARNING}} `setaccount` will be removed in a later version of Axe
Core.  Use the RPCs listed in the See Also subsection below instead.

*Parameter #1---a Axe address*

{% itemplate ntpd1 %}
- n: "Address"
  t: "string (base58)"
  p: "Required<br>(exactly 1)"
  d: "A P2PKH or P2SH Axe address belonging either to a specific account or the default account (\"\")"

{% enditemplate %}

*Result---an account name*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The name of an account, or an empty string (\"\", the default account)"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getaccount yMTFRnrfJ4NpnYVeidDNHVwT7uuNsVjevq
{% endhighlight %}

Result:

{% highlight text %}
doc test
{% endhighlight %}

*See also*

* [GetAddressesByAccount][rpc getaddressesbyaccount]: {{summary_getAddressesByAccount}}

{% endautocrossref %}
