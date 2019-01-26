{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/generate.md" %}

##### Generate
{% include helpers/subhead-links.md %}

<!-- __ -->

{% assign summary_generate="mines blocks immediately (before the RPC call returns)." %}

{% autocrossref %}

*Requires wallet support.*

The `generate` RPC {{summary_generate}}

*Parameter #1---the number of blocks to generate*

{% itemplate ntpd1 %}
- n: "`numblocks`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of blocks to generate.  The RPC call will not return until all blocks have been generated."

{% enditemplate %}

*Parameter #2---the number of iterations*

{% itemplate ntpd1 %}
- n: "`numblocks`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of iterations to try (default = 1000000)."

{% enditemplate %}


*Result---the generated block header hashes*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array containing the block header hashes of the generated blocks (may be empty if used with `generate 0`)"

- n: "→<br>Header Hashes"
  t: "string (hex)"
  p: "Required<br>(1 or more)"
  d: "The hashes of the headers of the blocks generated in regtest mode, as hex in RPC byte order"
{% enditemplate %}

*Example from Axe Core 0.12.2*

Using regtest mode, generate 2 blocks:

{% highlight bash %}
axe-cli -regtest generate 2
{% endhighlight %}

Result:

{% highlight json %}
[
  "55a4c47da8151c0823eec22c41ebc6d690a0288302179625bae9eb6f36808266",
  "3f07b9aa4e3bcd5518610945c4a6b32699acac71b1762605ff79ba553111fc79"
]
{% endhighlight %}

*See also*

* [GenerateToAddress][rpc generatetoaddress]: {{summary_generateToAddress}}
* [GetBlockTemplate][rpc getblocktemplate]: {{summary_getBlockTemplate}}
* [GetGenerate][rpc getgenerate]: {{summary_getGenerate}}
* [GetMiningInfo][rpc getmininginfo]: {{summary_getMiningInfo}}
* [SetGenerate][rpc setgenerate]: {{summary_setGenerate}}

{% endautocrossref %}
