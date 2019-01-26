{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/setprivatesendrounds.md" %}

##### SetPrivateSendRounds
{% include helpers/subhead-links.md %}

{% assign summary_setPrivateSendRounds="sets the number of PrivateSend mixing rounds to use" %}

<!-- __ -->

{% autocrossref %}

The `setprivatesendrounds` RPC {{summary_setPrivateSendRounds}}

*Parameter #1---number of mixing rounds to use*

{% itemplate ntpd1 %}
- n: "Rounds"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "The number of mixing rounds to use (minimum: 1, maximum: 16)"

{% enditemplate %}

*Result---`null` on success*

*Example from Axe Core 0.13.0*

{% highlight bash %}
axe-cli -testnet setprivatesendrounds 4
{% endhighlight %}

(Success: no result displayed.)

*See also:*

* [SetPrivateSendAmount][rpc setprivatesendamount]: {{summary_setPrivateSendAmount}}

{% endautocrossref %}
