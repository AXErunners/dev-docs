{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/privatesend.md" %}

##### PrivateSend
{% include helpers/subhead-links.md %}

{% assign summary_privateSend="controls the mixing process." %}

{% autocrossref %}

As of Axe Core 0.12.3, client-side mixing is not supported on masternodes.

The `privatesend` RPC {{summary_privateSend}}

{% itemplate ntpd1 %}
- n: "`mode`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The command mode to use:<br>`start` - Start mixing<br>`stop<!--noref-->` - Stop mixing<br>`reset` - Reset mixing"

{% enditemplate %}

**Command Mode - `start`**

*Result---start command return status*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Command return status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet privatesend start
{% endhighlight %}

Result:
{% highlight text %}
Mixing started successfully
{% endhighlight %}


**Command Mode - `stop<!--noref-->`**

*Result---stop command return status*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Command return status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet privatesend stop
{% endhighlight %}

Result:
{% highlight text %}
Mixing was stopped
{% endhighlight %}


**Command Mode - `reset`**

*Result---reset command return status*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Command return status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet privatesend reset
{% endhighlight %}

Result:
{% highlight text %}
Mixing was reset
{% endhighlight %}

*See also: none*

{% endautocrossref %}
