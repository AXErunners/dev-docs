{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getpoolinfo.md" %}

##### GetPoolInfo
{% include helpers/subhead-links.md %}

{% assign summary_getPoolInfo="returns an object containing mixing pool related information." %}

{% autocrossref %}

The `getpoolinfo` RPC {{summary_getPoolInfo}}

*Parameters: none*

*Result---information about the mixing pool*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Information about the mixing pool"

- n: "→<br>`state`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Mixing pool state.  Will be one of the following:<br>• `IDLE` <br>• `QUEUE` <br>• `ACCEPTING_ENTRIES` <br>• `SIGNING` <br>• `ERROR` <br>• `SUCCESS` <br>• `UNKNOWN` <br>"

- n: "→<br>`mixing_mode`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Mixing mode - will be one of the following:<br>• `normal` <br>• `multi-session` <br> "

- n: "→<br>`queue`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "Queue size"

- n: "→<br>`entries`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of entries"

- n: "→<br>`status`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "A more detailed description of the current state"

- n: "→<br>`outpoint`"
  t: "string (hex)"
  p: "Optional<br>(exactly 1)"
  d: "Previous output"

- n: "→<br>`addr`"
  t: "string"
  p: "Optional<br>(exactly 1)"
  d: "Address"

- n: "→<br>`keys_left`"
  t: "number (int)"
  p: "Optional<br>(exactly 1)"
  d: "The number of keys left in the local wallet"

- n: "→<br>`warnings`"
  t: "number (int)"
  p: "Optional<br>(exactly 1)"
  d: "Warnings related to local wallet"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet getpoolinfo
{% endhighlight %}

Result:
{% highlight json %}
{
  "state": "IDLE",
  "mixing_mode": "normal",
  "queue": 0,
  "entries": 0,
  "status": "PrivateSend is idle.",
  "keys_left": 617,
  "warnings": ""
}
{% endhighlight %}

{% highlight json %}
{
  "state": "QUEUE",
  "mixing_mode": "normal",
  "queue": 1,
  "entries": 0,
  "status": "Submitted to masternode, waiting in queue .",
  "outpoint": "e3a6b7878a7e9413898bb379b323c521676f9d460db17ec3bf42d9ac0c9a432f-1",
  "addr": "217.182.229.146:19999",
  "keys_left": 571,
  "warnings": ""
}
{% endhighlight %}

{% highlight json %}
{
  "state": "ERROR",
  "mixing_mode": "normal",
  "queue": 0,
  "entries": 0,
  "status": "PrivateSend request incomplete: Session timed out. Will retry...",
  "keys_left": 571,
  "warnings": ""
}
{% endhighlight %}

*See also:*

{% endautocrossref %}
