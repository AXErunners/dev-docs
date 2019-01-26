{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getpeerinfo.md" %}

##### GetPeerInfo
{% include helpers/subhead-links.md %}

{% assign summary_getPeerInfo="returns data about each connected network node." %}

{% autocrossref %}

The `getpeerinfo` RPC {{summary_getPeerInfo}}

*Parameters: none*

*Result---information about each currently-connected network node*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of objects each describing one connected node.  If there are no connections, the array will be empty"

- n: "→<br>Node<!--noref-->"
  t: "object"
  p: "Optional<br>(0 or more)"
  d: "An object describing a particular connected node"

- n: "→ →<br>`id`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The node's index number in the local node address<!--noref--> database"

- n: "→ →<br>`addr`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The IP address and port number used for the connection to the remote node"

- n: "→ →<br>`addrlocal`"
  t: "string"
  p: "Optional<br>(0 or 1)"
  d: "Our IP address and port number according to the remote node.  May be incorrect due to error or lying.  Most SPV nodes set this to `127.0.0.1:9999`"

- n: "→ →<br>`services`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The services advertised by the remote node in its `version` message"

- n: "→ →<br>`lastsend`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The Unix epoch time when we last successfully sent data to the TCP socket for this node"

- n: "→ →<br>`lastrecv`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The Unix epoch time when we last received data from this node"

- n: "→ →<br>`bytessent`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The total number of bytes we've sent to this node"

- n: "→ →<br>`bytesrecv`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The total number of bytes we've received from this node"

- n: "→ →<br>`conntime`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The Unix epoch time when we connected to this node"

- n: "→ →<br>`timeoffset`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "*Added in Bitcoin Core 0.12.0*<br><br>The time offset in seconds"

- n: "→ →<br>`pingtime`"
  t: "number (real)"
  p: "Required<br>(exactly 1)"
  d: "The number of seconds this node took to respond to our last P2P `ping` message"

- n: "→ →<br>`minping`"
  t: "number (real)"
  p: "Optional<br>(0 or 1)"
  d: "*Updated in Bitcoin Core 0.13.0*<br><br>The minimum observed ping time (if any at all)"

- n: "→ →<br>`pingwait`"
  t: "number (real)"
  p: "Optional<br>(0 or 1)"
  d: "The number of seconds we've been waiting for this node to respond to a P2P `ping` message.  Only shown if there's an outstanding `ping` message"

- n: "→ →<br>`version`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The protocol version number used by this node.  See the [protocol versions section][section protocol versions] for more information"

- n: "→ →<br>`subver`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The user agent this node sends in its `version` message.  This string will have been sanitized to prevent corrupting the JSON results.  May be an empty string"

- n: "→ →<br>`inbound`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "Set to `true` if this node connected to us (inbound); set to `false` if we connected to this node (outbound)"

- n: "→ →<br>`startingheight`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of the remote node's block chain when it connected to us as reported in its `version` message"

- n: "→ →<br>`banscore`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The ban score we've assigned the node based on any misbehavior it's made.  By default, Axe Core disconnects when the ban score reaches `100`"

- n: "→ →<br>`synced_headers`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The highest-height header we have in common with this node based the last P2P `headers` message it sent us.  If a `headers` message has not been received, this will be set to `-1`"

- n: "→ →<br>`synced_blocks`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The highest-height block we have in common with this node based on P2P `inv` messages this node sent us.  If no block `inv` messages have been received from this node, this will be set to `-1`"

- n: "→ →<br>`inflight`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of blocks which have been requested from this peer.  May be empty"

- n: "→ → →<br>Blocks<!--noref-->"
  t: "number (int)"
  p: "Optional<br>(0 or more)"
  d: "The height of a block being requested from the remote peer"

- n: "→ →<br>`whitelisted`"
  t: "bool"
  p: "Required<br>(exactly 1)"
  d: "Set to `true` if the remote peer has been whitelisted; otherwise, set to `false`.  Whitelisted peers will not be banned if their ban score exceeds the maximum (100 by default).  By default, peers connecting from localhost are whitelisted"

- n: "→ →<br>`bytessent_per_msg`"
  t: "string : <br>object"
  p: "Required<br>(exactly 1)"
  d: "*Added in Bitcoin Core 0.13.0*<br><br>Information about total sent bytes aggregated by message type"

- n: "→ → →<br>Message Type"
  t: "number (int)"
  p: "Required<br>(1 or more)"
  d: "Total sent bytes aggregated by message type. One field for every used message type"

- n: "→ →<br>`bytesrecv_per_msg`"
  t: "string : <br>object"
  p: "Required<br>(exactly 1)"
  d: "*Added in Bitcoin Core 0.13.0*<br><br>Information about total received bytes aggregated by message type"

- n: "→ → →<br>Message Type"
  t: "number (int)"
  p: "Required<br>(1 or more)"
  d: "Total received bytes aggregated by message type. One field for every used message type"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli getpeerinfo
{% endhighlight %}

Result (edited to show only a single entry, with IP addresses changed to
[RFC5737][] reserved IP addresses):

{% highlight json %}
[
  {
    "id": 3,
    "addr": "192.0.2.113:19999",
    "addrlocal": "127.0.0.1:56332",
    "services": "0000000000000005",
    "relaytxes": true,
    "lastsend": 1507818327,
    "lastrecv": 1507818327,
    "bytessent": 844135,
    "bytesrecv": 887651,
    "conntime": 1507808575,
    "timeoffset": 0,
    "pingtime": 0.189852,
    "minping": 0.187152,
    "version": 70208,
    "subver": "/Axe Core:0.12.2/",
    "inbound": false,
    "startingheight": 8416,
    "banscore": 0,
    "synced_headers": 8474,
    "synced_blocks": 8474,
    "inflight": [
    ],
    "whitelisted": false,
    "bytessent_per_msg": {
      "addr": 165,
      "dseg": 65,
      "dsq": 33984,
      "getaddr": 24,
      "getdata": 73261,
      "getheaders": 861,
      "getsporks": 48,
      "govobj": 20244,
      "govobjvote": 22196,
      "govsync": 545682,
      "headers": 106,
      "inv": 139035,
      "mnget": 28,
      "notfound": 1220,
      "ping": 2624,
      "pong": 2624,
      "sendheaders": 24,
      "ssc": 1792,
      "verack": 24,
      "version": 128
    },
    "bytesrecv_per_msg": {
      "addr": 4365,
      "block": 22307,
      "dsq": 33984,
      "getdata": 10417,
      "getheaders": 861,
      "govobjvote": 179,
      "govsync": 4620,
      "headers": 6254,
      "inv": 130964,
      "mnp": 352,
      "mnw": 600208,
      "notfound": 31192,
      "ping": 2624,
      "pong": 2624,
      "sendheaders": 24,
      "spork": 2860,
      "ssc": 33664,
      "verack": 24,
      "version": 128
    }
  },
]
{% endhighlight %}

*See also*

* [GetAddedNodeInfo][rpc getaddednodeinfo]: {{summary_getAddedNodeInfo}}
* [GetNetTotals][rpc getnettotals]: {{summary_getNetTotals}}
* [GetNetworkInfo][rpc getnetworkinfo]: {{summary_getNetworkInfo}}

{% endautocrossref %}
