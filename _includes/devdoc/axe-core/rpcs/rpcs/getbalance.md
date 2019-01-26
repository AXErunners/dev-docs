{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getbalance.md" %}

##### GetBalance
{% include helpers/subhead-links.md %}

{% assign summary_getBalance="gets the balance in decimal axe across all accounts or for a particular account." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

The `getbalance` RPC {{summary_getBalance}}

*Parameter #1---an account name*

{% itemplate ntpd1 %}
- n: "Account"
  t: "string"
  p: "Optional<br>(0 or 1)"
  d: "*Deprecated: will be removed in a later version of Bitcoin Core*<br><br>The name of an account to get the balance for.  An empty string (\"\") is the default account.  The string `*` will get the balance for all accounts (this is the default behavior)"

{% enditemplate %}

*Parameter #2---the minimum number of confirmations*

{{INCLUDE_CONFIRMATIONS_PARAMETER}}

*Parameter #3---whether to add the balance from transactions locked via InstantSend*

{% itemplate ntpd1 %}
- n: "addlocked"
  t: "bool"
  p: "Optional<br>(exactly 1)"
  d: "Add the balance from InstantSend locked transactions"

{% enditemplate %}

*Parameter #4---whether to include watch-only addresses*

{{INCLUDE_INCLUDE_WATCH_ONLY_PARAMETER}}

*Result---the balance in axe*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "number (axe)"
  p: "Required<br>(exactly 1)"
  d: "The balance of the account (or all accounts) in axe"

{% enditemplate %}

*Examples from Axe Core 0.13.0*

Get the balance for the main ("") account, including transactions with
at least five confirmations and those spent to watch-only addresses in
that account. Do not include InstantSend locked transactions.

{% highlight bash %}
axe-cli -testnet getbalance "" 3 false true
{% endhighlight %}

Result:

{% highlight json %}
0.00000000
{% endhighlight %}

Get the balance for the main ("") account, including transactions with
at least one confirmation and those spent to watch-only addresses in
that account. Include the balance from InstantSend locked transactions.

{% highlight bash %}
axe-cli -testnet getbalance "" 3 true true
{% endhighlight %}

Result:

{% highlight json %}
1.00000000
{% endhighlight %}


*See also*

* [ListAccounts][rpc listaccounts]: {{summary_listAccounts}}
* [GetReceivedByAccount][rpc getreceivedbyaccount]: {{summary_getReceivedByAccount}}
* [GetReceivedByAddress][rpc getreceivedbyaddress]: {{summary_getReceivedByAddress}}

{% endautocrossref %}
