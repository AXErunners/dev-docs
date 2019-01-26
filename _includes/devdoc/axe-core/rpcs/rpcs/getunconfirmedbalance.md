{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getunconfirmedbalance.md" %}

##### GetUnconfirmedBalance
{% include helpers/subhead-links.md %}

{% assign summary_getUnconfirmedBalance="returns the wallet's total unconfirmed balance." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

The `getunconfirmedbalance` RPC {{summary_getUnconfirmedBalance}}

*Parameters: none*

*Result---the balance of unconfirmed transactions paying this wallet*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "number (axe)"
  p: "Required<br>(exactly 1)"
  d: "The total number of axe paid to this wallet in unconfirmed transactions"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getunconfirmedbalance
{% endhighlight %}

Result (no unconfirmed incoming payments):

{% highlight json %}
0.00000000
{% endhighlight %}

*See also*

* [GetBalance][rpc getbalance]: {{summary_getBalance}}

{% endautocrossref %}
