{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getaddressutxos.md" %}

##### GetAddressUtxos
{% include helpers/subhead-links.md %}

{% autocrossref %}

{% assign summary_getAddressUtxos="returns all unspent outputs for an address." %}

*Requires wallet support and `-addressindex` Axe Core command-line/configuration-file parameter to be enabled.*

The `getaddressutxos` RPC {{summary_getAddressUtxos}}

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

*Result---information about unspent outputs for the address(es)*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of JSON objects, with each object describing a transaction involving one of the requested addresses"

- n: "→Unspent outputs"
  t: "object"
  p: "Required<br>(1 or more)"
  d: "An object describing a particular unspent output for the requested address(es)"

- n: "→→<br>`address`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The base58check encoded address"

- n: "→→<br>`txid`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The output txid"

- n: "→→<br>`outputIndex`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The output index"

- n: "→→<br>`script`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The script hex encoded"    

- n: "→→<br>`satoshis`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The number of haks of the output"

- n: "→→<br>`height`"
  t: "number"
  p: "Required<br>(exactly 1)"
  d: "The block height"
{% enditemplate %}

*Example from Axe Core 0.12.2*

Get the unspent outputs for an address:

{% highlight bash %}
axe-cli getaddressutxos '{"addresses": ["yLeC3F9UxJmFaRaf5yzH7FDc7RdvBasi84"]}'
{% endhighlight %}

Result:

{% highlight json %}
[
  {
    "address": "yLeC3F9UxJmFaRaf5yzH7FDc7RdvBasi84",
    "txid": "ef7bcd083db8c9551ca295698c3b7a6811288fae9944018d2a660a0f939bdb35",
    "outputIndex": 0,
    "script": "76a914038b8a73338c8f9c22024338198d63ff7c4cb4c088ac",
    "satoshis": 1000010000,
    "height": 7683
  }
]
{% endhighlight %}

{% endautocrossref %}
