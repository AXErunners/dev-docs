{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/masternode.md" %}

##### Masternode
{% include helpers/subhead-links.md %}

{% assign summary_masternode="provides a set of commands for managing masternodes and displaying information about them." %}

<!-- __ -->

{% autocrossref %}

The `masternode` RPC {{summary_masternode}}

{% endautocrossref %}

###### Masternode<!--noref--> Check
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> check` RPC forces a check of all masternodes and removes invalid ones.

*Parameters: none*

*Result---number of removed and total masternodes*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Masternode check results"

- n: "→<br>`removedTotalCount`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of all masternodes that were removed"

- n: "→<br>`removedEnabledCount`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of enabled masternodes that were removed"

- n: "→<br>`totalCount`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of all masternodes"

- n: "→<br>`enabledCount`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of enabled masternodes"

{% enditemplate %}

*Example from Axe Core 0.13.0*

{% highlight bash %}
axe-cli -testnet masternode check
{% endhighlight %}

Result:
{% highlight bash %}
{
  "removedTotalCount": 0,
  "removedEnabledCount": 0,
  "totalCount": 15,
  "enabledCount": 15
}
{% endhighlight %}
{% endautocrossref %}

###### Masternode<!--noref--> Count
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> count` RPC prints the number of all known masternodes.

*Parameter #1---mode*

{% itemplate ntpd1 %}
- n: "Mode"
  t: "string (hex)"
  p: "Optional<br>(exactly 1)"
  d: "Which masternodes to count:<br>`total` - Pre-0.12.3 default result,<br>`ps` - PrivateSend capable,<br>`enabled` - Enabled,<br>`all` - All,<br>`qualify` - Eligible for payment"

{% enditemplate %}

*Result---number of known masternodes*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Masternode count by mode"

- n: "→<br>`total`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of all masternodes"

- n: "→<br>`ps_compatible`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of PrivateSend compatible masternodes"

- n: "→<br>`enabled`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of enabled masternodes"

- n: "→<br>`qualify`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Count of masternodes qualified to receive payment"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli -testnet masternode count
{% endhighlight %}

Result:
{% highlight bash %}
{
  "total": 142,
  "ps_compatible": 13,
  "enabled": 13,
  "qualify": 6
}
{% endhighlight %}


**Get summarized count of all masternodes**

*Result---summary of known masternodes*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Summary of masternodes in each state"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli -testnet masternode count all
{% endhighlight %}

Result:
{% highlight bash %}
Total: 129 (PS Compatible: 97 / Enabled: 97 / Qualify: 90)
{% endhighlight %}

**Get total count of all masternodes (default output of `masternode<!--noref--> count` pre-0.12.3)**

*Result---number of known masternodes in mode*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Number of masternodes"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli -testnet masternode count total
{% endhighlight %}

Result:
{% highlight bash %}
142
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Current
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> current` RPC prints info on current masternode winner to be paid the next block (calculated locally).

*Parameters: none*

*Result---current winning masternode info*

{% itemplate ntpd1 %}
- n: "Result"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Winning masternode info"

- n: "→<br>`height`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Block height"

- n: "→<br>`IP:port`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The IP address/port of the masternode"

- n: "→<br>`protocol`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The protocol version number used by this node.  See the [protocol versions section][section protocol versions] for more information"

- n: "→<br>`outpoint`"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "The masternode's outpoint"

- n: "→<br>`payee`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Payee address"

- n: "→<br>`lastseen`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The Unix epoch time when the masternode was last seen"

- n: "→<br>`activeseconds`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of seconds the masternode has been active"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode current
{% endhighlight %}

Result:
{% highlight json %}
{
  "height": 37375,
  "IP:port": "108.61.192.47:19937",
  "protocol": 70208,
  "outpoint": "3df7fb192e21c34da99bdd10c34e58ecaf3f3c37d6b2289f0ffedba5050188cc-1",
  "payee": "ydGgePy4a3zza37Zm4D44B99czyo6TftU1",
  "lastseen": 1512482630,
  "activeseconds": 3170434
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Debug
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> debug` RPC prints masternode status.

{{WARNING}} `masternode<!--noref--> debug` was removed in Axe Core 0.12.2.2.

*Parameters: none*

*Result---masternode status*

{% itemplate ntpd1 %}
- n: "Result"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode debug
{% endhighlight %}

Result:
{% highlight bash %}
Masternode successfully started
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Genkey
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> genkey` RPC generates a new masternodeprivkey.

*Parameter #1---generate compressed key*

{% itemplate ntpd1 %}
- n: "Compressed"
  t: "bool"
  p: "Optional<br>(0 or 1)"
  d: "*Added in Axe Core 0.13.0*<br><br>If set to `true`, generates a compressed private key (default: false)"

{% enditemplate %}

*Result---masternode private key*

{% itemplate ntpd1 %}
- n: "Result"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode private key"

{% enditemplate %}

*Example from Axe Core 0.13.0*

{% highlight bash %}
axe-cli -testnet masternode genkey
{% endhighlight %}

Result:
{% highlight bash %}
92Mn5DQpnBHjFPbS3ZXcX3EdhuET18u3eXTTtVsdDzdcAMaXqtG
{% endhighlight %}

*Example from Axe Core 0.13.0 (compressed key)*

{% highlight bash %}
axe-cli -testnet masternode genkey true
{% endhighlight %}

Result:
{% highlight bash %}
cUHWQZQQNtrnvyYS3hERYyuzttvFAdw6JkrwS6T2gTZreH3oY6NJ
{% endhighlight %}


{% endautocrossref %}

###### Masternode<!--noref--> Outputs<!--noref-->
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> outputs` RPC prints masternode compatible outputs.

*Parameters: none*

*Result---masternode outputs*

{% itemplate ntpd1 %}
- n: "Result"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Masternode compatible outputs"

- n: "→<br>Output"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "Masternode compatible output (TXID:Index)"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode outputs
{% endhighlight %}

Result:
{% highlight json %}
{
  "f6c83fd96bfaa47887c4587cceadeb9af6238a2c86fe36b883c4d7a6867eab0f": "1"
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Start
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> start` RPC starts a local hot masternode configure in axe.conf.

{{WARNING}} `masternode<!--noref--> start` was removed in Axe Core 0.12.2.2. Local
masternode support was removed for security reasons.

*Parameters: none*

*Result---masternode status*

{% itemplate ntpd1 %}
- n: "Result"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode start
{% endhighlight %}

Result:
{% highlight bash %}
Masternode successfully started
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Start-alias
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> start-alias` starts a single remote masternode by assigned alias configured in masternode<!--noref-->.conf.

*Parameter #1---masternode alias*

{% itemplate ntpd1 %}
- n: "Alias"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Alias of the masternode to start"

{% enditemplate %}

*Result---masternode status*

{% itemplate ntpd1 %}
- n: "Result"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode start-alias MN01
{% endhighlight %}

Result:
{% highlight json %}
{
  "alias": "MN01",
  "result": "successful"
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Start-mode
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> start-<mode>` RPC starts remote masternodes configured in
masternode<!--noref-->.conf. Valid modes are: `all`, `missing`, or `disabled`.

*Parameters: none*

*Result---masternode status*

{% itemplate ntpd1 %}
- n: "Result"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode status"

- n: "→<br>`overall`"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "Reports masternode start successes/failures"

- n: "→<br>`detail`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Start details"

- n: "→ →<br>`status`"
  t: "object"
  p: "Required<br>(1 or more)"
  d: "Name of the masternode alias"

- n: "→ → →<br>`alias`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode alias"

- n: "→ → →<br>`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Start result"

{% enditemplate %}


*Example from Axe Core 0.12.2*

Start all masternodes in masternodes<!--noref-->.conf

{% highlight bash %}
axe-cli -testnet masternode start-all
{% endhighlight %}

Result:
{% highlight json %}
{
  "overall": "Successfully started 1 masternodes, failed to start 0, total 1",
  "detail": {
    "status": {
      "alias": "MN01",
      "result": "successful"
    }
  }
}
{% endhighlight %}


Start missing masternodes in masternodes<!--noref-->.conf

{% highlight bash %}
axe-cli -testnet masternode start-missing
{% endhighlight %}

Result:
{% highlight json %}
{
  "overall": "Successfully started 0 masternodes, failed to start 0, total 0",
  "detail": {
  }
}
{% endhighlight %}


Start disabled masternodes in masternodes<!--noref-->.conf

{% highlight bash %}
axe-cli -testnet masternode start-disabled
{% endhighlight %}

Result:
{% highlight json %}
{
  "overall": "Successfully started 1 masternodes, failed to start 0, total 1",
  "detail": {
    "status": {
      "alias": "MN01",
      "result": "successful"
    }
  }
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Status
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> status` RPC prints masternode status information.

*Parameters: none*

*Result---masternode status info*

{% itemplate ntpd1 %}
- n: "Result"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Masternode status info"

- n: "→<br>`outpoint`"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "The masternode's outpoint"

- n: "→<br>`service`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The IP address/port of the masternode"

- n: "→<br>`payee`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Payee address"

- n: "→<br>`status`"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "The masternode's status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode status
{% endhighlight %}

Result:
{% highlight json %}
{
  "outpoint": "f6c83fd96bfaa47887c4587cceadeb9af6238a2c86fe36b883c4d7a6867eab0f-1",
  "service": "45.32.237.77:19937",
  "payee": "yY6AmGopsZS31wy1JLHR9P6AC6owFaXwuh",
  "status": "Masternode successfully started"
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> List
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> list` prints a list of all known masternodes.

This RPC uses the same parameters and returns the same data as
[masternodelist][rpc masternodelist]. Please reference it for full details.

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode list \
	rank f6c83fd96bfaa47887c4587cceadeb9af6238a2c86fe36b883c4d7a6867eab0f
{% endhighlight %}

Result:
{% highlight json %}
{
  "f6c83fd96bfaa47887c4587cceadeb9af6238a2c86fe36b883c4d7a6867eab0f-1": 11
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> List-conf
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> list-conf` RPC prints masternode<!--noref-->.conf in JSON format.

*Parameters: none*

*Result---masternode info*

{% itemplate ntpd1 %}
- n: "Result"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Masternode status info"

- n: "→<br>`masternode`"
  t: "object"
  p: "Required<br>(1 or more)"
  d: "Object containing masternode info"

- n: "→ →<br>`alias`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode alias"

- n: "→ →<br>`address`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The IP address/port of the masternode"

- n: "→ →<br>`privateKey`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Masternode private key"

- n: "→ →<br>`txHash`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "Masternode collateral transaction hash"

- n: "→ →<br>`outputIndex`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Masternode collateral transaction index"

- n: "→ →<br>`status`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The masternode's status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode status
{% endhighlight %}

Result:
{% highlight json %}
{
  "masternode": {
    "alias": "MN01",
    "address": "45.32.237.77:19937",
    "privateKey": "92woG282ZQMASn8BAah6H8QmiE5NsPwucv7cu9eTVG1uU63fcfs",
    "txHash": "f6c83fd96bfaa47887c4587cceadeb9af6238a2c86fe36b883c4d7a6867eab0f",
    "outputIndex": "1",
    "status": "ENABLED"
  },
  "masternode": {
    "alias": "MN02",
    "address": "45.32.237.78:19937",
    "privateKey": "92woG282ZQMASn8BAah6H8QmiE5NsPwucv7cu9eTVG1uU63fcfs",
    "txHash": "f6c83fd96bfaa47887c4587cceadeb9af6238a2c86fe36b883c4d7a6867eab0f",
    "outputIndex": "1",
    "status": "ENABLED"
  }
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Winner
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> winner` RPC prints info on the next masternode winner to vote for.

*Parameters: none*

*Result---next masternode winner info*

{% itemplate ntpd1 %}
- n: "Result"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Winning masternode info"

- n: "→<br>`height`"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Block height"

- n: "→<br>`IP:port`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The IP address/port of the masternode"

- n: "→<br>`protocol`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The protocol version number used by this node.  See the [protocol versions section][section protocol versions] for more information"

- n: "→<br>`outpoint`"
  t: "string"
  p: "Required<br>(1 or more)"
  d: "The masternode's outpoint"

- n: "→<br>`payee`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Payee address"

- n: "→<br>`lastseen`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The Unix epoch time when the masternode was last seen"

- n: "→<br>`activeseconds`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of seconds the masternode has been active"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode winner
{% endhighlight %}

Result:
{% highlight json %}
{
  "height": 37384,
  "IP:port": "145.239.235.17:29937",
  "protocol": 70208,
  "outpoint": "66eddd00e5927d0a03437d5b8a2f15367c978ef7951c80ae1608a45b1bf64318-1",
  "payee": "yY3q6wqRe1y7xzHbGE88YfRg4t97GU7BJ6",
  "lastseen": 1512482474,
  "activeseconds": 1180019
}
{% endhighlight %}

{% endautocrossref %}

###### Masternode<!--noref--> Winners
<!-- no subhead-links here -->

{% autocrossref %}

The `masternode<!--noref--> winners` RPC prints the list of masternode winners.

By default, the 10 previous block winners, the current block winner, and the
next 20 block winners are displayed. More past block winners can be requested
via the optional `count` parameter.

*Parameter #1---count*

{% itemplate ntpd1 %}
- n: "Count"
  t: "string (hex)"
  p: "Optional<br>(exactly 1)"
  d: "Number of previous block winners to display (default: 10)"

{% enditemplate %}

*Parameter #2---filter*

{% itemplate ntpd1 %}
- n: "Filter"
  t: "string"
  p: "Optional<br>(exactly 1)"
  d: "Payment address to filter by"

{% enditemplate %}

*Result---masternode winners*

{% itemplate ntpd1 %}
- n: "Result"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Winning masternode info"

- n: "→<br>Masternode Winner"
  t: "int"
  p: "Required<br>(exactly 1)"
  d: "Key: Block height<br>Value: payee address"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet masternode winners
{% endhighlight %}

Result (current block - 37458):
{% highlight json %}
{
  "37448": "ygSWwhyzU61FNEta8gDh8gfoH5EZZUvc5m:8",
  "37449": "yjGZLzSSoFfTFgLDJrgniXfYxu3xF9xKQg:5",
  "37450": "yRTo1wXWoNnPFWcQVepKGXuLsoypnPkGWj:7",
  "37451": "yYMFRAYZ25XspHZ1EXC39wUMx9FhoC5VT2:9",
  "37452": "yX5y3otE4LitGYiSfZhVH4LdbwHShdzQ8v:7",
  "37453": "yX5y3otE4LitGYiSfZhVH4LdbwHShdzQ8v:4",
  "37454": "yUamtYUFhqUxCMny3JTcZJTyttVt8SYFug:9",
  "37455": "yU35XcdGMnj8Exa2ZZqCg4ongiNqQwpeUZ:9",
  "37456": "yaJc6tADbEjxQBAC69ugWNoTFpzxqkcgWd:7",
  "37457": "yf4WpwRX17p7YRkHJPQpHMXTwzi5s2VDcR:7",
  "37458": "ydbfUYWfLm6xg7Y5aBLjy38DvksrvNcHEc:9",
  "37459": "yYp9k2iuDptT2MB7qVZtVy6ModHtLXFjio:6",
  "37460": "yP1UHNx26ShYLej56SbHiTiPAUv2QppbUv:6",
  "37461": "yaCtZRpiYnVFMyWELHZF74v9ayLKCLPcC9:8",
  "37462": "ygYFnLHoVRyhRoxd6fXQ9nmEafX4eLoWkB:6",
  "37463": "yM5kTThWi8MnAFtZqx98Zipp1BbyypUZGK:7",
  "37464": "yeDY39aiqbBHbJft5F6rokR23EaZca6UTU:9",
  "37465": "yMME1ns1xfpGS2XbFPktsNyp7Cjr1BoJxb:8",
  "37466": "ycn5RWc4Ruo35FTS8bJwugVyCEkfVcrw9a:6",
  "37467": "yUTDkKKhbvDrnwkiaoP8HvqxTNC6rNnUe2:6",
  "37468": "yTstes2nSaSpvu9nTapiCGnjCLvLD5fUqt:5",
  "37469": "Unknown",
  "37470": "Unknown",
  "37471": "Unknown",
  "37472": "Unknown",
  "37473": "Unknown",
  "37474": "Unknown",
  "37475": "Unknown",
  "37476": "Unknown",
  "37477": "Unknown"
}
{% endhighlight %}

Get a filtered list of masternode winners

{% highlight bash %}
axe-cli -testnet masternode winners 150 "yTZ99"
{% endhighlight %}

Result:
{% highlight json %}
{
  "37338": "yTZ99fCnjNu33RDRtawf81iwJ9uxXFmkgM:9",
  "37339": "yTZ99fCnjNu33RDRtawf81iwJ9uxXFmkgM:8",
  "37432": "yTZ99fCnjNu33RDRtawf81iwJ9uxXFmkgM:6",
  "37433": "yTZ99fCnjNu33RDRtawf81iwJ9uxXFmkgM:9"
}
{% endhighlight %}

*See also:*

* [MasternodeList][rpc masternodelist]: {{summary_masternodeList}}

{% endautocrossref %}
