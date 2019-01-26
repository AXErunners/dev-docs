{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getrawchangeaddress.md" %}

##### GetRawChangeAddress
{% include helpers/subhead-links.md %}

{% assign summary_getRawChangeAddress="returns a new Axe address for receiving change. This is for use with raw transactions, not normal use." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

The `getrawchangeaddress` RPC {{summary_getRawChangeAddress}}

*Parameters: none*

*Result---a P2PKH address which can be used in raw transactions*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string (base58)"
  p: "Required<br>(exactly 1)"
  d: "A P2PKH address which has not previously been returned by this RPC.  The address will be removed from the keypool but not marked as a receiving address, so RPCs such as the `dumpwallet` RPC will show it as a change address.  The address may already have been part of the keypool, so other RPCs such as the `dumpwallet` RPC may have disclosed it previously.  If the wallet is unlocked, its keypool will also be filled to its max (by default, 100 unused keys).  If the wallet is locked and its keypool is empty, this RPC will fail"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getrawchangeaddress
{% endhighlight %}

Result:

{% highlight text %}
yXBr9BiJmugTzHPgByDmvjJMAkvhTmXVJ8
{% endhighlight %}

*See also*

* [GetNewAddress][rpc getnewaddress]: {{summary_getNewAddress}}
* [GetAccountAddress][rpc getaccountaddress]: {{summary_getAccountAddress}}

{% endautocrossref %}
