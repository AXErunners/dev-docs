{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getmempoolancestors.md" %}

##### GetMemPoolAncestors
{% include helpers/subhead-links.md %}

{% assign summary_getMemPoolAncestors="returns all in-mempool ancestors for a transaction in the mempool." %}

<!-- __ -->

{% autocrossref %}

*Added in Axe Core 0.12.3*

The `getmempoolancestors` RPC {{summary_getMemPoolAncestors}}

*Parameter #1---a transaction identifier (TXID)*

{% itemplate ntpd1 %}
- n: "TXID"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The TXID of a transaction in the memory pool, encoded as hex in RPC byte order"

{% enditemplate %}

*Parameter #2---desired output format*

{% itemplate ntpd1 %}
- n: "Format"
  t: "bool"
  p: "Optional<br>(0 or 1)"
  d: "Set to `true` to get json objects describing each transaction in the memory pool; set to `false` (the default) to only get an array of TXIDs"

{% enditemplate %}

*Result---list of ancestor transactions*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of TXIDs belonging to transactions in the memory pool.  The array may be empty if there are no transactions in the memory pool"

- n: "→<br>TXID"
  t: "string"
  p: "Optional<br>(0 or more)"
  d: "The TXID of a transaction in the memory pool, encoded as hex in RPC byte order"

{% enditemplate %}

*Result (format: `true`)---a JSON object describing each transaction*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "A object containing transactions currently in the memory pool.  May be empty"

- n: "→<br>TXID"
  t: "string : object"
  p: "Optional<br>(0 or more)"
  d: "The TXID of a transaction in the memory pool, encoded as hex in RPC byte order"

- n: "→ →<br>`size`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of the serialized transaction in bytes"

- n: "→ →<br>`fee`"
  t: "number (bitcoins)"
  p: "Required<br>(exactly 1)"
  d: "The transaction fee paid by the transaction in decimal bitcoins"

- n: "→ →<br>`modifiedfee`"
  t: "number (bitcoins)"
  p: "Required<br>(exactly 1)"
  d: "The transaction fee with fee deltas used for mining priority in decimal bitcoins"

- n: "→ →<br>`time`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The time the transaction entered the memory pool, Unix epoch time format"

- n: "→ →<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The block height when the transaction entered the memory pool"

- n: "→ →<br>`startingpriority`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The priority of the transaction when it first entered the memory pool"

- n: "→ →<br>`currentpriority`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The current priority of the transaction"

- n: "→ →<br>`descendantcount`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of in-mempool descendant transactions (including this one)"

- n: "→ →<br>`descendantsize`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of in-mempool descendants (including this one)"

- n: "→ →<br>`descendantfees`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The modified fees (see `modifiedfee` above) of in-mempool descendants (including this one)"

- n: "→ →<br>`ancestorcount`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of in-mempool ancestor transactions (including this one)"

- n: "→ →<br>`ancestorsize`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of in-mempool ancestors (including this one)"

- n: "→ →<br>`ancestorfees`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The modified fees (see `modifiedfee` above) of in-mempool ancestors (including this one)"

- n: "→ →<br>`depends`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array holding TXIDs of unconfirmed transactions this transaction depends upon (parent transactions).  Those transactions must be part of a block before this transaction can be added to a block, although all transactions may be included in the same block.  The array may be empty"

- n: "→ → →<br>Depends TXID"
  t: "string"
  p: "Optional (0 or more)"
  d: "The TXIDs of any unconfirmed transactions this transaction depends upon, encoded as hex in RPC byte order"

{% enditemplate %}

*Examples from Axe Core 0.12.3*

The default (`false`):

{% highlight bash %}
axe-cli getmempoolancestors 49a512c3d567effd4f605a6023df8b4b523\
ac0ae7bccbaeed1c8a7db1e05e15a
{% endhighlight %}

Result:

{% highlight json %}
[
  "d1eefe8a006e2c21b55bc97c1f5b10000d63aa6a777bb11abc0daf62e4296660"
]
{% endhighlight %}

Verbose output (`true`):

{% highlight bash %}
axe-cli getmempoolancestors 49a512c3d567effd4f605a6023df8b4b523\
ac0ae7bccbaeed1c8a7db1e05e15a true
{% endhighlight %}

Result:

{% highlight json %}
{
  "d1eefe8a006e2c21b55bc97c1f5b10000d63aa6a777bb11abc0daf62e4296660": {
    "size": 963,
    "fee": 0.00000966,
    "modifiedfee": 0.00000966,
    "time": 1519160516,
    "height": 79045,
    "startingpriority": 4514051697.115385,
    "currentpriority": 4520474899.74359,
    "descendantcount": 2,
    "descendantsize": 1189,
    "descendantfees": 1192,
    "ancestorcount": 1,
    "ancestorsize": 963,
    "ancestorfees": 966,
    "depends": [
    ]
  }
}
{% endhighlight %}

*See also*

* [GetMemPoolDescendants][rpc getmempooldescendants]: {{summary_getMemPoolDescendants}}
* [GetRawMemPool][rpc getrawmempool]: {{summary_getRawMemPool}}

{% endautocrossref %}
