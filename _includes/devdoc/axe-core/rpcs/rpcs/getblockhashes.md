{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getblockhashes.md" %}

##### GetBlockHashes
{% include helpers/subhead-links.md %}

{% assign summary_getBlockHashes="returns array of hashes of blocks within the timestamp range provided (requires `timestampindex` to be enabled)." %}

{% autocrossref %}

*Added in Axe Core 0.12.1*

The `getblockhashes` RPC {{summary_getBlockHashes}}

*Parameter #1---high block timestamp*

{% itemplate ntpd1 %}
- n: "Block Timestamp"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The block timestamp for the newest block hash that should be returned."

{% enditemplate %}

*Parameter #2---low block timestamp*

{% itemplate ntpd1 %}
- n: "Block Timestamp"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The block timestamp for the oldest block hash that should be returned."

{% enditemplate %}

*Result---the block header hashes in the give time range*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "The hashes of the blocks in the requested time range"

- n: "→<br>`hash`"
  t: "string (hex)"
  p: "Required<br>(1 or more)"
  d: "The hash of a block in the chain, encoded as hex in RPC byte order"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getblockhashes 1507555793 1507554793
{% endhighlight %}

Result:

{% highlight json %}
[
  "0000000010a16c6fbc6bd5cdc238c2beabcda334e97fde1500d59be4e6fc4b89",
  "000000009910885e811230c403e55aac6547d6df04ee671b2e8348524f73cab8",
  "000000004bbb3828db1c4d4491760336cec215087819ab656336f30d4095e3d2",
  "00000000ad2df2149aca2261a9a87c41e139dfe8f73d91db7ec0c1837fee21a0",
  "0000000074068a9e3a271d165da3deb28bc3f8c751dde97f460d8078d92a9d06"
]
{% endhighlight %}

*See also*

* [GetBlock][rpc getblock]: {{summary_getBlock}}
* [GetBlockHash][rpc getblockhash]: {{summary_getBlockHash}}
* [GetBestBlockHash][rpc getbestblockhash]: {{summary_getBestBlockHash}}


{% endautocrossref %}
