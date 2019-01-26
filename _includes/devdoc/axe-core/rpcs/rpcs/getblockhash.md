{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getblockhash.md" %}

##### GetBlockHash
{% include helpers/subhead-links.md %}

{% assign summary_getBlockHash="returns the header hash of a block at the given height in the local best block chain." %}

{% autocrossref %}

The `getblockhash` RPC {{summary_getBlockHash}}

*Parameter---a block height*

{% itemplate ntpd1 %}
- n: "Block Height"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of the block whose header hash should be returned.  The height of the hardcoded genesis block is 0"

{% enditemplate %}

*Result---the block header hash*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string (hex)/null"
  p: "Required<br>(exactly 1)"
  d: "The hash of the block at the requested height, encoded as hex in RPC byte order, or JSON `null` if an error occurred"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getblockhash 4000
{% endhighlight %}

Result:

{% highlight text %}
00000ce22113f3eb8636e225d6a1691e132fdd587aed993e1bc9b07a0235eea4
{% endhighlight %}

*See also*

* [GetBlock][rpc getblock]: {{summary_getBlock}}
* [GetBestBlockHash][rpc getbestblockhash]: {{summary_getBestBlockHash}}

{% endautocrossref %}
