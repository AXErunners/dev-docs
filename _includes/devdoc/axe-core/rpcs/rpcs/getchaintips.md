{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getchaintips.md" %}

##### GetChainTips
{% include helpers/subhead-links.md %}

{% assign summary_getChainTips="returns information about the highest-height block (tip) of each local block chain." %}

{% autocrossref %}

The `getchaintips` RPC {{summary_getChainTips}}

*Parameters: none*

*Result---an array of block chain tips*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of JSON objects, with each object describing a chain tip.  At least one tip---the local best block chain---will always be present"

- n: "→<br>Tip"
  t: "object"
  p: "Required<br>(1 or more)"
  d: "An object describing a particular chain tip.  The first object will always describe the active chain (the local best block chain)"

- n: "→ →<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of the highest block in the chain.  A new node with only the genesis block will have a single tip with height of 0"

- n: "→ →<br>`hash`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of the highest block in the chain, encoded as hex in RPC byte order"

- n: "→<br>`difficulty`"
  t: "number (real)"
  p: "Required<br>(exactly 1)"
  d: "The difficulty of the highest-height block in the best block chain (Added in Axe Core 0.12.1)"

- n: "→<br>`chainwork`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The estimated number of block header hashes checked from the genesis block to this block, encoded as big-endian hex (Added in Axe Core 0.12.1)"

- n: "→ →<br>`branchlen`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of blocks that are on this chain but not on the main chain.  For the local best block chain, this will be `0`; for all other chains, it will be at least `1`"

- n: "→ →<br>`forkpoint`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "*Added in Axe Core 0.12.3*<br><br>Block hash of the last common block between this tip and the main chain"

- n: "→ →<br>`status`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The status of this chain.  Valid values are:<br>• `active` for the local best block chain<br>• `invalid` for a chain that contains one or more invalid blocks<br>• `headers-only`<!--noref--> for a chain with valid headers whose corresponding blocks both haven't been validated and aren't stored locally<br>• `valid-headers` for a chain with valid headers whose corresponding blocks are stored locally, but which haven't been fully validated<br>• `valid-fork` for a chain which is fully validated but which isn't part of the local best block chain (it was probably the local best block chain at some point)<br>• `unknown` for a chain whose reason for not being the active chain is unknown"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli -testnet getchaintips
{% endhighlight %}

{% highlight json %}
[
  {
    "height": 110192,
    "hash": "000000000c6007f40c3b68a77b0e1319a89c0504ae1b391d071cf49fa7591dee",
    "difficulty": 18.38631407059958,
    "chainwork": "000000000000000000000000000000000000000000000000002cbd2546718747",
    "branchlen": 0,
    "forkpoint": "000000000c6007f40c3b68a77b0e1319a89c0504ae1b391d071cf49fa7591dee",
    "status": "active"
  }
]
{% endhighlight %}

*See also*

* [GetBestBlockHash][rpc getbestblockhash]: {{summary_getBestBlockHash}}
* [GetBlock][rpc getblock]: {{summary_getBlock}}
* [GetBlockChainInfo][rpc getblockchaininfo]: {{summary_getBlockChainInfo}}

{% endautocrossref %}
