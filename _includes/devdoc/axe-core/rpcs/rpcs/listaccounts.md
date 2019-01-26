{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/listaccounts.md" %}

##### ListAccounts
{% include helpers/subhead-links.md %}

{% assign summary_listAccounts="lists accounts and their balances." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

The `listaccounts` RPC {{summary_listAccounts}}

{{WARNING}} `listaccounts` will be removed in a later version of Axe
Core.  Use the RPCs listed in the See Also subsection below instead.

*Parameter #1---the minimum number of confirmations a transaction must have*

{{INCLUDE_CONFIRMATIONS_PARAMETER}}

*Parameter #2--- whether to include transactions locked via InstantSend*

{% itemplate ntpd1 %}
- n: "addlocked"
  t: "bool"
  p: "Optional<br>(exactly 1)"
  d: "Add the balance from InstantSend locked transactions"

{% enditemplate %}

*Parameter #3---whether to include watch-only addresses in results*

{{INCLUDE_INCLUDE_WATCH_ONLY_PARAMETER}}

*Result---a list of accounts and their balances*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "A JSON array containing key/value pairs with account names and values.  Must include, at the very least, the default account (\"\")"

- n: "→<br>Account : Balance"
  t: "string : number (axe)"
  p: "Required<br>(1 or more)"
  d: "The name of an account as a string paired with the balance of the account as a number of axe.  The number of axe may be negative if the account has spent more axe than it received.  Accounts with zero balances and zero transactions will be displayed"

{% enditemplate %}

*Example from Axe Core 0.13.0*

Display account balances with one confirmation and watch-only addresses
included. Add the balance of InstantSend locked transactions also.

{% highlight bash %}
axe-cli -testnet listaccounts 1 true true
{% endhighlight %}

Result:

{% highlight json %}
{
  "": -2941.30029732,
  "Watching": 8.50000000,
  "MN": 2000.25442744,
  "PS": 37.02970000,
  "Recv1": 3843.48167912,
}
{% endhighlight %}

*See also*

* [GetAccount][rpc getaccount]: {{summary_getAccount}}
* [GetAddressesByAccount][rpc getaddressesbyaccount]: {{summary_getAddressesByAccount}}
* [ListReceivedByAccount][rpc listreceivedbyaccount]: {{summary_listReceivedByAccount}}


{% endautocrossref %}
