{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getdifficulty.md" %}

##### GetDifficulty
{% include helpers/subhead-links.md %}

{% assign summary_getDifficulty="returns the proof-of-work difficulty as a multiple of the minimum difficulty." %}

{% autocrossref %}

The `getdifficulty` RPC {{summary_getDifficulty}}

*Parameters: none*

*Result---the current difficulty*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "number (real)"
  p: "Required<br>(exactly 1)"
  d: "The difficulty of creating a block with the same target threshold (nBits) as the highest-height block in the local best block chain.  The number is a a multiple of the minimum difficulty"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getdifficulty
{% endhighlight %}

Result:

{% highlight text %}
1.069156225528583
{% endhighlight %}

*See also*

* [GetNetworkHashPS][rpc getnetworkhashps]: {{summary_getNetworkHashPS}}
* [GetMiningInfo][rpc getmininginfo]: {{summary_getMiningInfo}}

{% endautocrossref %}
