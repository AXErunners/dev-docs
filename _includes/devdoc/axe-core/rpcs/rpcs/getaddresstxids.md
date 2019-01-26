{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getaddresstxids.md" %}

##### GetAddressTxids
{% include helpers/subhead-links.md %}

{% autocrossref %}

{% assign summary_getAddressTxids="returns the txids for an address(es)." %}

*Requires wallet support and `-addressindex` Axe Core command-line/configuration-file parameter to be enabled.*

The `getaddresstxids` RPC {{summary_getAddressTxids}}

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

*Parameter #2---the start block height*

{% itemplate ntpd1 %}
- n: "`start`"
  t: "number (int)"
  p: "Optional<br>(exactly 1)"
  d: "The start block height"

{% enditemplate %}

*Parameter #3---the end block height*

{% itemplate ntpd1 %}
- n: "`end`"
  t: "number (int)"
  p: "Optional<br>(exactly 1)"
  d: "The end block height"

{% enditemplate %}

*Result---information about txids for the address(es)*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of txids related to the requested address(es)"

- n: "→<br>TXID"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "The transaction id"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Get the deltas for an address:

{% highlight bash %}
axe-cli getaddresstxids '{"addresses": ["yWjoZBvnUKWhpKMbBkVVnnMD8Bzno9j6tQ"], "start":5000, "end":7500}'
{% endhighlight %}

Result:

{% highlight json %}
[
  "1fe86e463a9394d4ccd9a5ff1c6b483c95b4350ffdb055b55dc3615111e977de",
  "6cb4379eec45cd3bb08b8f4c3a101b8cd89795e24f2cb8288a9941a85fb114cf"
]
{% endhighlight %}

{% endautocrossref %}
