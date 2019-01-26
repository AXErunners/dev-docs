{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/stop.md" %}

##### Stop
{% include helpers/subhead-links.md %}

{% assign summary_stop="safely shuts down the Axe Core server." %}

{% autocrossref %}

The `stop` RPC {{summary_stop}}

*Parameters: none*

*Result---the server is safely shut down*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The string \"Axe Core server stopping\""

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet stop
{% endhighlight %}

Result:

{% highlight text %}
Axe Core server stopping
{% endhighlight %}

*See also: none*

{% endautocrossref %}
