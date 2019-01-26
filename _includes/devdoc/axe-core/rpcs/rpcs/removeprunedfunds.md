{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/removeprunedfunds.md" %}

##### RemovePrunedFunds
{% include helpers/subhead-links.md %}

<!-- __ -->

{% assign summary_removePrunedFunds="deletes the specified transaction from the wallet. Meant for use with pruned wallets and as a companion to importprunedfunds." %}

{% autocrossref %}

*Added in Axe Core 0.12.3 / Bitcoin Core 0.13.0*

*Requires wallet support.*

The `removeprunedfunds` RPC {{summary_removePrunedFunds}} This will effect wallet balances.

*Parameter #1---the raw transaction to import*

{% itemplate ntpd1 %}
- n: "TXID"
  t: "string<br>(hex)"
  p: "Required<br>(exactly 1)"
  d: "The hex-encoded id of the transaction you are removing"

{% enditemplate %}

*Result---`null` on success*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "null"
  p: "Required<br>(exactly 1)"
  d: "If the funds are removed from the wallet, JSON `null` will be returned"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli removeprunedfunds bb7daff525b83fa6a847ab50bf7f8f14d6\
22761a19f69157b362ef3f25bda687
{% endhighlight %}

(Success: no result displayed.)

*See also*

* [ImportPrivKey][rpc importprivkey]: {{summary_importPrivKey}}
* [ImportPrunedFunds][rpc importprunedfunds]: {{summary_importPrunedFunds}}

{% endautocrossref %}
