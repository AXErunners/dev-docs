{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/gettxoutsetinfo.md" %}

##### GetTxOutSetInfo
{% include helpers/subhead-links.md %}

{% assign summary_getTxOutSetInfo="returns statistics about the confirmed unspent transaction output (UTXO) set. Note that this call may take some time and that it only counts outputs from confirmed transactions---it does not count outputs from the memory pool." %}

{% autocrossref %}

The `gettxoutsetinfo` RPC {{summary_getTxOutSetInfo}}

*Parameters: none*

*Result---statistics about the UTXO set*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Information about the UTXO set"

- n: "→<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of the local best block chain.  A new node with only the hardcoded genesis block will have a height of 0"

- n: "→<br>`bestblock`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of the header of the highest block on the local best block chain, encoded as hex in RPC byte order"

- n: "→<br>`transactions`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of transactions with unspent outputs"

- n: "→<br>`txouts`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of unspent transaction outputs"

- n: "→<br>`bytes_serialized`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of the serialized UTXO set in bytes; not counting overhead, this is the size of the `chainstate` directory in the Bitcoin Core configuration directory"

- n: "→<br>`hash_serialized`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "A SHA256(SHA256()) hash of the serialized UTXO set; useful for comparing two nodes to see if they have the same set (they should, if they always used the same serialization format and currently have the same best block).  The hash is encoded as hex in RPC byte order"

- n: "→<br>`total_amount`"
  t: "number (Axe)"
  p: "Required<br>(exactly 1)"
  d: "The total amount of Axe in the UTXO set"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet gettxoutsetinfo
{% endhighlight %}

Result:

{% highlight json %}
{
  "height": 4755,
  "bestblock": "0000000025da0abc9e9937f1c65b3f544a57bb7e8817422f7ff2a89ff32696f4",
  "transactions": 4748,
  "txouts": 10602,
  "bytes_serialized": 463925,
  "hash_serialized": "fce0776d7961b409c4d8a46363c8d049879321861f7f40db97b0432e59532320",
  "total_amount": 2243585.70000000
}
{% endhighlight %}

*See also*

* [GetBlockChainInfo][rpc getblockchaininfo]: {{summary_getBlockChainInfo}}
* [GetMemPoolInfo][rpc getmempoolinfo]: {{summary_getMemPoolInfo}}

{% endautocrossref %}
