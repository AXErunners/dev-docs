{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/gettxoutproof.md" %}

##### GetTxOutProof
{% include helpers/subhead-links.md %}

{% assign summary_getTxOutProof="returns a hex-encoded proof that one or more specified transactions were included in a block." %}

{% autocrossref %}

The `gettxoutproof` RPC {{summary_getTxOutProof}}

NOTE: By default this function only works when there is an
unspent output in the UTXO set for this transaction. To make it always work,
you need to maintain a transaction index, using the `-txindex` command line option, or
specify the block in which the transaction is included in manually (by block header hash).

*Parameter #1---the transaction hashes to prove*

{% itemplate ntpd1 %}
- n: "TXIDs"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "A JSON array of txids to filter"

- n: "→<br>`txid`"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "TXIDs of the transactions to generate proof for.  All transactions must be in the same block"

{% enditemplate %}

*Parameter #2---the block to look for txids in*

{% itemplate ntpd1 %}
- n: "Header hash"
  t: "string"
  p: "Optional<br>(0 or 1)"
  d: "If specified, looks for txid in the block with this hash"

{% enditemplate %}

*Result---serialized, hex-encoded data for the proof*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "A string that is a serialized, hex-encoded data for the proof"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Get the hex-encoded proof that "txid" was included in block 000000012d774f3c7668f32bc448efeb93b317f312dd863679de3a007d47817f:

{% highlight bash %}
axe-cli gettxoutproof \
  '''
    [
      "e0a06b47f0de6f3851a228d5ac377ac38b495adf04298c43e951e679c5b0aa8f"
    ]
  ''' \
  '000000012d774f3c7668f32bc448efeb93b317f312dd863679de3a007d47817f'
{% endhighlight %}

Result (wrapped):

{% highlight text %}
01000020ed72cc6a7294782a7711d8fa7ef74716ef062dc50bb0820f7eec923801000000\
aa5d17c5128043803b67c7ab03e4d3ffbc9604b54f877f1c5cf9ed3adeaa19b2cd7ed659\
f838011d10a70a480200000002033c89c2baecba9fc983c85dcf365c2d9cc93aca1dee2e\
5ac18124464056542e8faab0c579e651e9438c2904df5a498bc37a37acd528a251386fde\
f0476ba0e00105
{% endhighlight %}

*See also*

* [VerifyTxOutProof][rpc verifytxoutproof]: {{summary_verifyTxOutProof}}
* [`merkleblock` message][merkleblock message]: A description of the
  format used for the proof.

{% endautocrossref %}
