{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/submitblock.md" %}

##### SubmitBlock
{% include helpers/subhead-links.md %}

{% assign summary_submitBlock="accepts a block, verifies it is a valid addition to the block chain, and broadcasts it to the network. Extra parameters are ignored by Axe Core but may be used by mining pools or other programs." %}

{% autocrossref %}

The `submitblock` RPC {{summary_submitBlock}}

*Parameter #1---the new block in serialized block format as hex*

{% itemplate ntpd1 %}
- n: "Block"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The full block to submit in serialized block format as hex"

{% enditemplate %}

*Parameter #2---additional parameters*

{% itemplate ntpd1 %}
- n: "Parameters"
  t: "object"
  p: "Optional<br>(0 or 1)"
  d: "A JSON object containing extra parameters.  Not used directly by Axe Core and also not broadcast to the network.  This is available for use by mining pools and other software.  A common parameter is a `workid` string"

{% enditemplate %}

*Result---`null` or error string*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "null/string"
  p: "Required<br>(exactly 1)"
  d: "If the block submission succeeded, set to JSON `null`.  If submission failed, set to one of the following strings: `duplicate`, `duplicate-invalid`, `inconclusive`, or `rejected`.  The JSON-RPC `error` field will still be set to `null` if submission failed for one of these reasons"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Submit the following block with the workid, "test".

{% highlight bash %}
axe-cli -testnet submitblock 0100002032e3965d5fdd7a883209d516599337eb4cb82f\
  7aea22ecc114942c1f00000000244388a3bd2c38a85bf337755a1a165d0df2b335e3886058\
  40e08a3cdf1ce1a4297ede598f6a011d027c1c300201000000010000000000000000000000\
  000000000000000000000000000000000000000000ffffffff1202791f0e2f5032506f6f6c\
  2d74444153482fffffffff044d75bb8b010000001976a914d4a5ea2641e9dd37f7a5ad5c92\
  9df4743518769188acac2ea68f010000001976a9148d0934de58f969df3b53a72b4f47211d\
  890ebf5588ac68b9ea03000000004341047559d13c3f81b1fadbd8dd03e4b5a1c73b05e2b9\
  80e00d467aa9440b29c7de23664dde6428d75cafed22ae4f0d302e26c5c5a5dd4d3e1b796d\
  7281bdc9430f35ac00000000000000002a6a28f47e935509fc85533dc78197e93e87d1c793\
  43bda495429d8e3680069f6a22780000000002000000000000000100000001078e0c77e3b0\
  4323d0834841f965543aaae2b275f684f55fbaf22e1c83bff97e010000006a473044022077\
  6e96d202cc4f50f79d269d7cd36712c7486282dda0cb6eae583c916c98b34c022070941efb\
  3201cf500cc6b879d6570fc477d4c3e6a8d91286e84465235f542c42012102dddbfc3fe06b\
  96e3a36f3e815222cd1cb9586b3193c4a0de030477f621956d51feffffff02a00bd1000000\
  00001976a914d7b47d4b40a23c389f5a17754d7f60f511c7d0ec88ac316168821300000019\
  76a914c9190e507834b78a624d7578f1ad3819592ca1aa88ac771f0000 \
  '{ "workid": "test" }'
{% endhighlight %}

Result (the block above was already on a local block chain):

{% highlight text %}
duplicate
{% endhighlight %}

*See also*

* [GetBlockTemplate][rpc getblocktemplate]: {{summary_getBlockTemplate}}

{% endautocrossref %}
