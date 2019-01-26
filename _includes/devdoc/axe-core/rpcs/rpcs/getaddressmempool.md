{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getaddressmempool.md" %}

##### GetAddressMempool
{% include helpers/subhead-links.md %}

{% autocrossref %}

{% assign summary_getAddressMempool="returns all mempool deltas for an address." %}

*Requires wallet support and `-addressindex` Axe Core command-line/configuration-file parameter to be enabled.*

The `getaddressmempool` RPC {{summary_getAddressMempool}}

*Parameter #1---an array of addresses*

{% itemplate ntpd1 %}
- n: "`addresses`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "An array of P2PKH or P2SH Axe address(es)"

- n: "→Address"
  t: "string (base58)"
  p: "Required<br>(1 or more)"
  d: "The base58check encoded address"

{% enditemplate %}

*Result---information about mempool deltas for the address(es)*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of JSON objects, with each object describing a transaction involving one of the requested addresses"

- n: "→Mempool Deltas"
  t: "object"
  p: "Required<br>(1 or more)"
  d: "An object describing a particular mempool address delta"

- n: "→→<br>`address`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The base58check encoded address"

- n: "→→<br>`txid`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The related txid"

- n: "→→<br>`index`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The related input or output index"

- n: "→→<br>`satoshis`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The difference of haks"

- n: "→→<br>`timestamp`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The time the transaction entered the mempool (seconds)"

- n: "→→<br>`prevtxid`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The previous txid (if spending)"

- n: "→→<br>`prevout`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The previous transaction output index (if spending)"    
{% enditemplate %}

*Example from Axe Core 0.12.2*

Get the deltas for an address:

{% highlight bash %}
axe-cli getaddressmempool '{"addresses": ["yWjoZBvnUKWhpKMbBkVVnnMD8Bzno9j6tQ"]}'
{% endhighlight %}

Result:

{% highlight text %}
  Example result needed
{% endhighlight %}

{% endautocrossref %}
