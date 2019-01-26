{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getbestblockhash.md" %}

##### GetBestBlockHash
{% include helpers/subhead-links.md %}

{% assign summary_getBestBlockHash="returns the header hash of the most recent block on the best block chain." %}

{% autocrossref %}

The `getbestblockhash` RPC {{summary_getBestBlockHash}}

*Parameters: none*

*Result---hash of the tip from the best block chain*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of the block header from the most recent block on the best block chain, encoded as hex in RPC byte order"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getbestblockhash
{% endhighlight %}

Result:

{% highlight text %}
00000bafbc94add76cb75e2ec92894837288a481e5c005f6563d91623bf8bc2c
{% endhighlight %}

*See also*

* [GetBlock][rpc getblock]: {{summary_getBlock}}
* [GetBlockHash][rpc getblockhash]: {{summary_getBlockHash}}

{% endautocrossref %}
