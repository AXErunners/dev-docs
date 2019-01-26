{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getsuperblockbudget.md" %}

##### GetSuperblockBudget
{% include helpers/subhead-links.md %}

{% assign summary_getSuperblockBudget="returns the absolute maximum sum of superblock payments allowed." %}

{% autocrossref %}

The `getsuperblockbudget` RPC {{summary_getSuperblockBudget}}

*Parameter #1---block index*

{% itemplate ntpd1 %}
- n: "index"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The superblock index"

{% enditemplate %}

*Result---maximum sum of superblock payments*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The absolute maximum sum of superblock payments allowed, in AXE"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getsuperblockbudget 7392
{% endhighlight %}

Result:
{% highlight text %}
367.20
{% endhighlight %}

*See also:*

* [GetGovernanceInfo][rpc getgovernanceinfo]: {{summary_getGovernanceInfo}}

{% endautocrossref %}
