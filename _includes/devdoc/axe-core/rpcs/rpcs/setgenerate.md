{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/setgenerate.md" %}

##### SetGenerate
{% include helpers/subhead-links.md %}

{% assign summary_setGenerate="was removed in Axe Core 0.12.3." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

**_Removed in Axe Core 0.12.3 / Bitcoin Core 0.13.0._**

The `setgenerate` RPC {{summary_setGenerate}}

*Parameter #1---enable/disable generation*

{% itemplate ntpd1 %}
- n: "`generate`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "Set to true to turn on generation, false to turn off."

{% enditemplate %}

*Parameter #2---processor limit*

{% itemplate ntpd1 %}
- n: "`genproclimit`"
  t: "number (int)"
  p: "Optional<br>(exactly 1)"
  d: "Set the processor limit for when generation is on. Can be -1 for unlimited."

{% enditemplate %}

*Result---the generated block header hashes*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "null"
  p: "Required<br>(exactly 1)"
  d: "Always JSON `null`"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Enable generation using 1 processor:

{% highlight bash %}
axe-cli -testnet setgenerate 1
{% endhighlight %}

Result:

(Success: no result displayed. Process manager shows 100% CPU usage.)

*See also*

* [Generate][rpc generate]: {{summary_generate}}
* [GenerateToAddress][rpc generatetoaddress]: {{summary_generateToAddress}}
* [GetMiningInfo][rpc getmininginfo]: {{summary_getMiningInfo}}
* [GetBlockTemplate][rpc getblocktemplate]: {{summary_getBlockTemplate}}

{% endautocrossref %}
