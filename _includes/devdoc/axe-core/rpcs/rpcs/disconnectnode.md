{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/disconnectnode.md" %}

##### DisconnectNode
{% include helpers/subhead-links.md %}

{% assign summary_disconnectNode="immediately disconnects from a specified node." %}

{% autocrossref %}

*Added in Bitcoin Core 0.12.0*

The `disconnectnode` RPC {{summary_disconnectNode}}

*Parameter #1---hostname/IP address and port of node to disconnect*

{% itemplate ntpd1 %}
- n: "`address`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The node you want to disconnect from as a string in the form of `<IP address>:<port>`.<br><br>*Updated in Bitcoin Core 0.14.1*"

{% enditemplate %}

*Result---`null` on success or error on failed disconnect*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "null"
  p: "Required<br>(exactly 1)"
  d: "JSON `null` when the node was disconnected"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Disconnects following node from your node.

{% highlight bash %}
axe-cli -testnet disconnectnode 192.0.2.113:19999
{% endhighlight %}

Result (no output from `axe-cli` because result is set to `null`).

*See also*

* [AddNode][rpc addnode]: {{summary_addNode}}
* [GetAddedNodeInfo][rpc getaddednodeinfo]: {{summary_getAddedNodeInfo}}

{% endautocrossref %}
