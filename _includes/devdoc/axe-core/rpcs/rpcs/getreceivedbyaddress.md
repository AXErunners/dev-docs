{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getreceivedbyaddress.md" %}

##### GetReceivedByAddress
{% include helpers/subhead-links.md %}

{% assign summary_getReceivedByAddress="returns the total amount received by the specified address in transactions with the specified number of confirmations. It does not count coinbase transactions." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

The `getreceivedbyaddress` RPC {{summary_getReceivedByAddress}}

*Parameter #1---the address*

{% itemplate ntpd1 %}
- n: "Address"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The address whose transactions should be tallied"

{% enditemplate %}

*Parameter #2---the minimum number of confirmations*

{{INCLUDE_CONFIRMATIONS_PARAMETER}}

*Parameter #3---whether to include transactions locked via InstantSend*

{% itemplate ntpd1 %}
- n: "addlocked"
  t: "bool"
  p: "Optional<br>(exactly 1)"
  d: "Add the balance from InstantSend locked transactions"

{% enditemplate %}

*Result---the amount of axe received*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "number (axe)"
  p: "Required<br>(exactly 1)"
  d: "The amount of axe received by the address, excluding coinbase transactions.  May be `0`"

{% enditemplate %}

*Example from Axe Core 0.13.0*

Get the axe received for a particular address, only counting
transactions with six or more confirmations (ignore InstantSend locked transactions):

{% highlight bash %}
axe-cli -testnet getreceivedbyaddress yYoCWcjbykWsQJ7MVJrTMeQd8TZe5N4Q7g 6
{% endhighlight %}

Result:

{% highlight json %}
0.00000000
{% endhighlight %}

Get the axe received for a particular address, only counting
transactions with six or more confirmations (include InstantSend locked transactions):

{% highlight bash %}
axe-cli -testnet getreceivedbyaddress yYoCWcjbykWsQJ7MVJrTMeQd8TZe5N4Q7g 6 true
{% endhighlight %}

Result:

{% highlight json %}
0.30000000
{% endhighlight %}


*See also*

* [GetReceivedByAccount][rpc getreceivedbyaccount]: {{summary_getReceivedByAccount}}
* [GetAddressesByAccount][rpc getaddressesbyaccount]: {{summary_getAddressesByAccount}}
* [ListAccounts][rpc listaccounts]: {{summary_listAccounts}}

{% endautocrossref %}
