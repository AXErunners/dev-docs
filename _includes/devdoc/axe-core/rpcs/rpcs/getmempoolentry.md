{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getmempoolentry.md" %}

##### GetMemPoolEntry
{% include helpers/subhead-links.md %}

{% assign summary_getMemPoolEntry="returns mempool data for given transaction (must be in mempool)." %}

<!-- __ -->

{% autocrossref %}

*Added in Axe Core 0.12.3*

The `getmempoolentry` RPC {{summary_getMemPoolEntry}}

*Parameter #1---a transaction identifier (TXID)*

{% itemplate ntpd1 %}
- n: "TXID"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The TXID of a transaction in the memory pool, encoded as hex in RPC byte order"

{% enditemplate %}

*Result ---a JSON object describing the transaction*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "A object containing transactions currently in the memory pool.  May be empty"

- n: "→<br>`size`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of the serialized transaction in bytes"

- n: "→<br>`fee`"
  t: "number (bitcoins)"
  p: "Required<br>(exactly 1)"
  d: "The transaction fee paid by the transaction in decimal bitcoins"

- n: "→<br>`modifiedfee`"
  t: "number (bitcoins)"
  p: "Required<br>(exactly 1)"
  d: "The transaction fee with fee deltas used for mining priority in decimal bitcoins"

- n: "→<br>`time`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The time the transaction entered the memory pool, Unix epoch time format"

- n: "→<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The block height when the transaction entered the memory pool"

- n: "→<br>`startingpriority`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The priority of the transaction when it first entered the memory pool"

- n: "→<br>`currentpriority`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The current priority of the transaction"

- n: "→<br>`descendantcount`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of in-mempool descendant transactions (including this one)"

- n: "→<br>`descendantsize`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of in-mempool descendants (including this one)"

- n: "→<br>`descendantfees`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The modified fees (see `modifiedfee` above) of in-mempool descendants (including this one)"

- n: "→<br>`ancestorcount`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of in-mempool ancestor transactions (including this one)"

- n: "→<br>`ancestorsize`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of in-mempool ancestors (including this one)"

- n: "→<br>`ancestorfees`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The modified fees (see `modifiedfee` above) of in-mempool ancestors (including this one)"

- n: "→<br>`depends`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array holding TXIDs of unconfirmed transactions this transaction depends upon (parent transactions).  Those transactions must be part of a block before this transaction can be added to a block, although all transactions may be included in the same block.  The array may be empty"

- n: "→ →<br>Depends TXID"
  t: "string"
  p: "Optional (0 or more)"
  d: "The TXIDs of any unconfirmed transactions this transaction depends upon, encoded as hex in RPC byte order"

- n: "→<br>`instantsend`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "True if this transaction was sent as an InstantSend one"

- n: "→<br>`instantlock`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "True if this transaction was locked via InstantSend"

{% enditemplate %}

*Examples from Axe Core 0.12.3*

{% highlight bash %}
axe-cli getmempoolentry d1eefe8a006e2c21b55bc97c1f5b10000d63aa6\
a777bb11abc0daf62e4296660
{% endhighlight %}

Result:

{% highlight json %}
{
  "size": 226,
  "fee": 0.00000226,
  "modifiedfee": 0.00000226,
  "time": 1519159538,
  "height": 79036,
  "startingpriority": 0,
  "currentpriority": 0,
  "descendantcount": 2,
  "descendantsize": 452,
  "descendantfees": 452,
  "ancestorcount": 1,
  "ancestorsize": 226,
  "ancestorfees": 226,
  "depends": [
  ],
  "instantsend": false,
  "instantlock": false  
}
{% endhighlight %}

*See also*

* [GetMemPoolAncestors][rpc getmempoolancestors]: {{summary_getMemPoolAncestors}}
* [GetMemPoolDescendants][rpc getmempooldescendants]: {{summary_getMemPoolDescendants}}
* [GetRawMemPool][rpc getrawmempool]: {{summary_getRawMemPool}}

{% endautocrossref %}
