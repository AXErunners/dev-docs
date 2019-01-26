{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getblocktemplate.md" %}

##### GetBlockTemplate
{% include helpers/subhead-links.md %}

<!-- __ -->

{% assign summary_getBlockTemplate="gets a block template or proposal for use with mining software." %}

{% autocrossref %}

The `getblocktemplate` RPC {{summary_getBlockTemplate}} For more
information, please see the following resources:

* [Bitcoin Wiki GetBlockTemplate][wiki getblocktemplate]
* [BIP22][]
* [BIP23][]

*Parameter #1---a JSON request object*

{% itemplate ntpd1 %}
- n: "Request"
  t: "object"
  p: "Optional<br>(exactly 1)"
  d: "A JSON request object"

- n: "→<br>`mode`"
  t: "string"
  p: "Optional<br>(exactly 1)"
  d: "This must be set to \"template\" or omitted"

- n: "→<br>`capabilities`"
  t: "array (string)"
  p: "Optional<br>(0 or more)"
  d: "A list of strings"

- n: "→ →<br>Capability"
  t: "string"
  p: "Optional<br>(exactly 1)"
  d: "Client side supported feature, `longpoll`, `coinbasetxn`, `coinbasevalue`, `proposal`, `serverlist`, `workid`"

- n: "→<br>`rules`"
  t: "array (string)"
  p: "Optional<br>(0 or more)"
  d: "A list of strings"

- n: "→ →<br>Rules"
  t: "string"
  p: "Optional<br>(exactly 1)"
  d: "Client side supported softfork deployment, `csv`, `dip0001`, etc."

{% enditemplate %}

*Result---block template*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "A object containing a block template"

- n: "→<br>`capabilities`"
  t: "array (string)"
  p: "Required<br>(1 or more)"
  d: "The client side supported features"

- n: "→ →<br>Capability"
  t: "string"
  p: "Optional<br>(0 or more)"
  d: "A client side supported feature"

- n: "→<br>`version`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The block version"

- n: "→<br>`rules`"
  t: "array (string)"
  p: "Required<br>(1 or more)"
  d: "The specific block rules that are to be enforced"

- n: "→ →<br>Block Rule"
  t: "string"
  p: "Optional<br>(0 or more)"
  d: "A specific block rule to be enforced"

- n: "→<br>`vbavailable`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Contains the set of pending, supported versionbit (BIP 9) softfork deployments"

- n: "→ →<br>Bit Number"
  t: "number"
  p: "Required<br>(0 or more)"
  d: "The bit number the named softfork rule"

- n: "→<br>`vbrequired`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The bit mask of versionbits the server requires set in submissions"

- n: "→<br>`previousblockhash`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of current highest block"

- n: "→<br>`transactions`"
  t: "array (objects)"
  p: "Optional<br>(0 or more)"
  d: "Non-coinbase transactions to be included in the next block"

- n: "→ →<br>Transaction"
  t: "object"
  p: "Optional<br>(0 or more)"
  d: "Non-coinbase transaction"

- n: "→ → →<br>`data`"
  t: "string (hex)"
  p: "Optional<br>(0 or more)"
  d: "Transaction data encoded in hex (byte-for-byte)"

- n: "→ → →<br>`hash`"
  t: "string (hex)"
  p: "Optional<br>(0 or more)"
  d: "The hash/id encoded in little-endian hex"

- n: "→ → →<br>`depends`"
  t: "array (numbers)"
  p: "Required<br>(0 or more)"
  d: "An array holding TXIDs of unconfirmed transactions this TX depends upon (parent transactions)."

- n: "→ → → →<br>Transaction number"
  t: "number"
  p: "Optional<br>(1 or more)"
  d: "Transactions before this one (by 1-based index in `transactions` list) that must be present in the final block if this one is"

- n: "→ → →<br>`fee`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The difference in value between transaction inputs and outputs (in haks). For coinbase transactions, this is a negative number of the total collected block fees (ie., not including the block subsidy); if key is not present, fee is unknown and clients MUST NOT assume there isn't one"

- n: "→ → →<br>`sigops`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "Total SigOps. If not present, the count is unknown (clients MUST NOT assume there aren't any)"

- n: "→ → →<br>`required`"
  t: "boolean"
  p: "Optional<br>(exactly 1)"
  d: "If provided and true, this transaction must be in the final block"

- n: "→<br>`coinbaseaux`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "A object containing data that should be included in the coinbase scriptSig content"

- n: "→ →<br>Flags"
  t: "string"
  p: "Required<br>(0 or more)"
  d: ""

- n: "→<br>`coinbasevalue`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The maximum allowable input to coinbase transaction, including the generation award and transaction fees (in haks)"

- n: "→<br>`coinbasetxn`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Information for the coinbase transaction)"

- n: "→<br>`target`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The hash target"

- n: "→<br>`mintime`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The minimum timestamp appropriate for next block time in seconds since epoch"

- n: "→<br>`mutable`"
  t: "array (string)"
  p: "Required<br>(exactly 1)"
  d: "The list of ways the block template may be changed"

- n: "→ →<br>Value"
  t: "string"
  p: "Required<br>(0 or more)"
  d: "A way the block template may be changed, e.g. 'time', 'transactions', 'prevblock'"

- n: "→<br>`noncerange`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "A range of valid nonces"

- n: "→<br>`sigoplimit`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The limit of sigops in blocks"

- n: "→<br>`sizelimit`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The limit of block size"

- n: "→<br>`curtime`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The current timestamp in seconds since epoch"

- n: "→<br>`bits`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The compressed target of next block"

- n: "→<br>`previousbits`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The compressed target of  the current highest block"

- n: "→<br>`height`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The height of the next block"

- n: "→<br>`masternode`"
  t: "array (objects)"
  p: "Required<br>(0 or more)"
  d: "Required masternode payments that must be included in the next block"

- n: "→ →<br>Masternode Payee"
  t: "object"
  p: "Optional<br>(0 or more)"
  d: "Object containing a masternode payee's information"  

- n: "→ → →<br>`payee`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Payee address"

- n: "→ → →<br>`script`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Payee scriptPubKey"

- n: "→ → →<br>`amount`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "Required amount to pay"

- n: "→<br>`masternode_payments_started`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "True if masternode payments started"

- n: "→<br>`masternode_payments_enforced`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "True if masternode payments enforced"

- n: "→<br>`superblock`"
  t: "array (objects)"
  p: "Required<br>(0 or more)"
  d: "The superblock payees that must be included in the next block"

- n: "→ →<br>Superblock Payee"
  t: "object"
  p: "Optional<br>(0 or more)"
  d: "Object containing a superblock payee's information"

- n: "→ → →<br>`payee`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Payee address"

- n: "→ → →<br>`script`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Payee scriptPubKey"

- n: "→ → →<br>`amount`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "Required amount to pay"

- n: "→<br>`superblocks_started`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "True if superblock payments started"

- n: "→<br>`superblocks_enabled`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "True if superblock payments enabled"

- n: "→<br>`coinbase_payload`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "_Added in Axe Core 0.13.0_<br><br>Coinbase transaction payload data encoded in hexadecimal"
{% enditemplate %}

*Example from Axe Core 0.13.0*

{% highlight bash %}
axe-cli -testnet getblocktemplate
{% endhighlight %}

Result:

{% highlight json %}
{
  "capabilities": [
    "proposal"
  ],
  "version": 536870920,
  "rules": [
    "csv",
    "dip0001",
    "bip147"
  ],
  "vbavailable": {
    "dip0003": 3
  },
  "vbrequired": 0,
  "previousblockhash": "0000000004dd4bf3ed4f4bac4a8f8c781a73bff32886390ec15fa0c5686476ac",
  "transactions": [
  ],
  "coinbaseaux": {
    "flags": ""
  },
  "coinbasevalue": 2089285715,
  "longpollid": "0000000004dd4bf3ed4f4bac4a8f8c781a73bff32886390ec15fa0c5686476ac4",
  "target": "000000000eeb4b00000000000000000000000000000000000000000000000000",
  "mintime": 1542118149,
  "mutable": [
    "time",
    "transactions",
    "prevblock"
  ],
  "noncerange": "00000000ffffffff",
  "sigoplimit": 40000,
  "sizelimit": 2000000,
  "curtime": 1542119335,
  "bits": "1c0eeb4b",
  "previousbits": "1c0e639b",
  "height": 263905,
  "masternode": [
    {
      "payee": "yedxgyCLu7BpxBbpeLUw4vAkxNrcEgHt57",
      "script": "76a914c8f2a948efe84e9d9795aa473c5afb6023d6c07488ac",
      "amount": 1044642850
    }
  ],
  "masternode_payments_started": true,
  "masternode_payments_enforced": true,
  "superblock": [
  ],
  "superblocks_started": true,
  "superblocks_enabled": true,
  "coinbase_payload": ""
}
{% endhighlight %}

*See also*

* [SetGenerate][rpc setgenerate]: {{summary_setGenerate}}
* [GetMiningInfo][rpc getmininginfo]: {{summary_getMiningInfo}}
* [SubmitBlock][rpc submitblock]: {{summary_submitBlock}}
* [PrioritiseTransaction][rpc prioritisetransaction]: {{summary_prioritiseTransaction}}

{% endautocrossref %}
