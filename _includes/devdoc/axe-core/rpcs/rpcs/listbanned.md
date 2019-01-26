{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/listbanned.md" %}

##### ListBanned
{% include helpers/subhead-links.md %}

{% assign summary_listBanned="lists all banned IPs/Subnets." %}

{% autocrossref %}

*Added in Bitcoin Core 0.12.0*

The `listbanned` RPC {{summary_listBanned}}

*Parameters: none*

*Result---information about each banned IP/Subnet*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "An array of objects each describing one entry. If there are no entries in the ban list, the array will be empty"

- n: "→<br>Node<!--noref-->"
  t: "object"
  p: "Optional<br>(0 or more)"
  d: "A ban list entry"

- n: "→ →<br>`address`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The IP/Subnet of the entry"

- n: "→ →<br>`banned_until`"
  t: "number<br>(int)"
  p: "Required<br>(exactly 1)"
  d: "The Unix epoch time when the entry was added to the ban list"

- n: "→ →<br>`ban_created`"
  t: "number<br>(int)"
  p: "Required<br>(exactly 1)"
  d: "The Unix epoch time until the IP/Subnet is banned"

- n: "→ →<br>`ban_reason`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Set to one of the following reasons:<br>• `node<!--noref--> misbehaving` if the node was banned by the client because of DoS violations<br>• `manually added` if the node was manually banned by the user"

{% enditemplate %}

*Examples from Axe Core 0.12.2*

The default (`false`):

{% highlight bash %}
axe-cli listbanned
{% endhighlight %}

Result:

{% highlight json %}
[
  {
    "address": "192.0.2.201/32",
    "banned_until": 1507906175,
    "ban_created": 1507819775,
    "ban_reason": "node misbehaving"
  },
  {
    "address": "192.0.2.101/32",
    "banned_until": 1507906199,
    "ban_created": 1507819799,
    "ban_reason": "manually added"
  }
]
{% endhighlight %}

*See also*

* [SetBan][rpc setban]: {{summary_setBan}}
* [ClearBanned][rpc clearbanned]: {{summary_clearBanned}}

{% endautocrossref %}
