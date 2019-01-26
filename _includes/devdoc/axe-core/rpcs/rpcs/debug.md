{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/debug.md" %}

##### Debug
{% include helpers/subhead-links.md %}

{% assign summary_debug="changes the debug category from the console." %}

{% autocrossref %}

The `debug` RPC {{summary_debug}}

*Parameter #1---debug category*

{% itemplate ntpd1 %}
- n: "Debug category"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "The debug category to activate. Use a `+` to specify multiple categories. Categories will be one of the following:<br>• `0` - Disables all categories <br>• `1` - Enables all categories <br>• `addrman` <br>• `alert` <br>• `bench` <br>• `coindb` <br>• `db` <br>• `lock` <br>• `rand` <br>• `rpc` <br>• `selectcoins` <br>• `mempool` <br>• `mempoolrej` <br>• `net` <br>• `proxy` <br>• `prune` <br>• `http` <br>• `libevent` <br>• `tor` <br>• `zmq` <br>• `axe` <br>• `privatesend` <br>• `instantsend` <br>• `masternode` <br>• `spork` <br>• `keepass` <br>• `mnpayments` <br>• `gobject` <br>"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli -testnet debug "net+mempool"
{% endhighlight %}

Result:

{% highlight text %}
Debug mode: net+mempool
{% endhighlight %}

*See also: none*

{% endautocrossref %}
