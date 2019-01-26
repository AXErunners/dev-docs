{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getnetworkhashps.md" %}

##### GetNetworkHashPS
{% include helpers/subhead-links.md %}

{% assign summary_getNetworkHashPS="returns the estimated network hashes per second based on the last n blocks." %}

{% autocrossref %}

The `getnetworkhashps` RPC {{summary_getNetworkHashPS}}

*Parameter #1---number of blocks to average*

{% itemplate ntpd1 %}
- n: "`blocks`"
  t: "number (int)"
  p: "Optional<br>(0 or 1)"
  d: "The number of blocks to average together for calculating the estimated hashes per second.  Default is `120`.  Use `-1` to average all blocks produced since the last difficulty change"

{% enditemplate %}

*Parameter #2---block height*

{% itemplate ntpd1 %}
- n: "`height`"
  t: "number (int)"
  p: "Optional<br>(0 or 1)"
  d: "The height of the last block to use for calculating the average.  Defaults to `-1` for the highest-height block on the local best block chain.  If the specified height is higher than the highest block on the local best block chain, it will be interpreted the same as `-1`"

{% enditemplate %}

*Result---estimated hashes per second*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The estimated number of hashes per second based on the parameters provided.  May be 0 (for Height=`0`, the genesis block) or a negative value if the highest-height block averaged has a block header time earlier than the lowest-height block averaged"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Get the average hashes per second for all the blocks since the last
difficulty change before block 6000.

{% highlight bash %}
axe-cli -testnet getnetworkhashps -1 6000
{% endhighlight %}

Result:

{% highlight json %}
22214011.90821117
{% endhighlight %}

*See also*

* [GetDifficulty][rpc getdifficulty]: {{summary_getDifficulty}}
* [GetBlock][rpc getblock]: {{summary_getBlock}}

{% endautocrossref %}
