{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/estimatepriority.md" %}

##### EstimatePriority
{% include helpers/subhead-links.md %}

<!-- __ -->

{% autocrossref %}

{% assign summary_estimatePriority="estimates the priority that a transaction needs in order to be included within a certain number of blocks as a free high-priority transaction." %}

*Added in Bitcoin Core 0.10.0.*

The `estimatepriority` RPC {{summary_estimatePriority}} This should not to be confused with the `prioritisetransaction` RPC which will remain supported for adding fee deltas to transactions.

{{WARNING}} `estimatepriority` has been [removed from Bitcoin](https://github.com/bitcoin/bitcoin/commit/fe282acd7604b5265762b24e531bdf1ebb1f009b). While still present in Axe Core, it is deprecated as of 0.12.3 (should be considered unstable and will disappear in the future). Use the RPC listed in the "See Also" subsection below instead.

Transaction priority is relative to a transaction's byte size.

*Parameter #1---how many blocks the transaction may wait before being included as a free high-priority transaction*

{% itemplate ntpd1 %}
- n: "Blocks"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The maximum number of blocks a transaction should have to wait before it is predicted to be included in a block based purely on its priority"

{% enditemplate %}

*Result---the priority a transaction needs*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "number (real)"
  p: "Required<br>(exactly 1)"
  d: "The estimated priority the transaction should have in order to be included within the specified number of blocks.  If the node doesn't have enough information to make an estimate, the value `-1` will be returned"

{% enditemplate %}

*Examples from Axe Core 0.12.2*

{% highlight bash %}
axe-cli estimatepriority 6
{% endhighlight %}

Result:

{% highlight json %}
718158904.10958910
{% endhighlight %}

Requesting data the node can't calculate yet:

{% highlight bash %}
axe-cli estimatepriority 100
{% endhighlight %}

Result:

{% highlight json %}
-1
{% endhighlight %}

*See also*

* [EstimateFee][rpc estimatefee]: {{summary_estimateFee}}

{% endautocrossref %}
