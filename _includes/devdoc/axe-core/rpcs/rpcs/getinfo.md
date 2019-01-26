{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getinfo.md" %}

##### GetInfo
{% include helpers/subhead-links.md %}

{% assign summary_getInfo="prints various information about the node and the network." %}

{% autocrossref %}

The `getinfo` RPC {{summary_getInfo}}

{{WARNING}} `getinfo` will be removed in a later version of Axe
Core.  Use the RPCs listed in the See Also subsection below instead.

*Parameters: none*

*Result---information about the node and network*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Information about this node and the network"

- n: "→<br>`version`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "This node's version of Bitcoin Core in its internal integer format.  For example, Axe Core 0.12.2 has the integer version number 120200"

- n: "→<br>`protocolversion`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The protocol version number used by this node.  See the [protocol versions section][section protocol versions] for more information"

- n: "→<br>`walletversion`"
  t: "number (int)"
  p: "Optional<br>(0 or 1)"
  d: "The version number of the wallet.  Only returned if wallet support is enabled"

- n: "→<br>`balance`"
  t: "number (haks)"
  p: "Optional<br>(0 or 1)"
  d: "The total balance of the wallet in haks.  Only returned if wallet support is enabled"

- n: "→<br>`privatesend_balance`"
  t: "number (haks)"
  p: "Optional<br>(0 or 1)"
  d: "The PrivateSend balance of the wallet in haks.  Only returned if wallet support is enabled  (Added in Axe Core 0.11.0)"

- n: "→<br>`blocks`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of blocks in the local best block chain.  A new node with only the hardcoded genesis block will return `0`"

- n: "→<br>`timeoffset`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The offset of the node's clock from the computer's clock (both in UTC) in seconds.  The offset may be up to 4200 seconds (70 minutes)"

- n: "→<br>`connections`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The total number of open connections (both outgoing and incoming) between this node and other nodes"

- n: "→<br>`proxy`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The hostname/IP address and port number of the proxy, if set, or an empty string if unset"

- n: "→<br>`difficulty`"
  t: "number (real)"
  p: "Required<br>(exactly 1)"
  d: "The difficulty of the highest-height block in the local best block chain"

- n: "→<br>`testnet`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "Set to `true` if this node is on testnet; set to `false` if this node is on mainnet or a regtest"

- n: "→<br>`keypoololdest`"
  t: "number (int)"
  p: "Optional<br>(0 or 1)"
  d: "The date as Unix epoch time when the oldest key in the wallet key pool was created; useful for only scanning blocks created since this date for transactions.  Only returned if wallet support is enabled"

- n: "→<br>`keypoolsize`"
  t: "number (int)"
  p: "Optional<br>(0 or 1)"
  d: "The number of keys in the wallet keypool.  Only returned if wallet support is enabled"

- n: "→<br>`unlocked_until`"
  t: "number (int)"
  p: "Optional<br>(0 or 1)"
  d: "The Unix epoch time when the wallet will automatically re-lock.  Only displayed if wallet encryption is enabled.  Set to `0` if wallet is currently locked"

- n: "→<br>`paytxfee`"
  t: "number (haks)"
  p: "Optional<br>(0 or 1)"
  d: "The minimum fee to pay per kilobyte of transaction; may be `0`.  Only returned if wallet support is enabled"

- n: "→<br>`relayfee`"
  t: "number (haks)"
  p: "Required<br>(exactly 1)"
  d: "The minimum fee a low-priority transaction must pay in order for this node to accept it into its memory pool"

- n: "→<br>`errors`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "A plain-text description of any errors this node has encountered or detected.  If there are no errors, an empty string will be returned.  This is not related to the JSON-RPC `error` field"

{% enditemplate %}

*Example from Axe Core 0.12.2 with wallet support enabled*

{% highlight bash %}
axe-cli -testnet getinfo
{% endhighlight %}

Result:

{% highlight json %}
{
  "version": 120200,
  "protocolversion": 70208,
  "walletversion": 61000,
  "balance": 0.00000000,
  "privatesend_balance": 0.00000000,
  "blocks": 0,
  "timeoffset": 0,
  "connections": 0,
  "proxy": "",
  "difficulty": 0.000244140625,
  "testnet": true,
  "keypoololdest": 1507579068,
  "keypoolsize": 617,
  "unlocked_until": 0,
  "paytxfee": 0.00000000,
  "relayfee": 0.00010000,
  "errors": ""
}
{% endhighlight %}

*See also*

* [GetBlockChainInfo][rpc getblockchaininfo]: {{summary_getBlockChainInfo}}
* [GetMemPoolInfo][rpc getmempoolinfo]: {{summary_getMemPoolInfo}}
* [GetMiningInfo][rpc getmininginfo]: {{summary_getMiningInfo}}
* [GetNetworkInfo][rpc getnetworkinfo]: {{summary_getNetworkInfo}}
* [GetWalletInfo][rpc getwalletinfo]: {{summary_getWalletInfo}}

{% endautocrossref %}
