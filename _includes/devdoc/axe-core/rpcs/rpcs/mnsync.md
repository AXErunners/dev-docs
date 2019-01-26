{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/mnsync.md" %}

##### MnSync
{% include helpers/subhead-links.md %}

{% assign summary_mnSync="returns the sync status, updates to the next step or resets it entirely." %}

{% autocrossref %}

The `mnsync` RPC {{summary_mnSync}}

*Parameter #1---Command mode*

{% itemplate ntpd1 %}
- n: "`mode`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The command mode to use:<br>`status` - Get masternode sync status<br>`next` - Move to next sync asset<br>`reset` - Reset sync status"

{% enditemplate %}

**Command Mode - `status`**

*Result---the sync status*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object/null"
  p: "Required<br>(exactly 1)"
  d: "Information about the masternode sync status"

- n: "→<br>`AssetID`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The sync asset ID"

- n: "→<br>`AssetName`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The sync asset name"

- n: "→<br>`AssetStartTime`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The sync asset start time"

- n: "→<br>`Attempt`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The sync attempt number"

- n: "→<br>`IsBlockchainSynced`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "Blockchain sync status"

- n: "→<br>`IsMasternodeListSynced`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "Masternode list sync status"

- n: "→<br>`IsWinnersListSynced`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "Masternode winners list sync status"		

- n: "→<br>`IsSynced`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "Masternode sync status"

- n: "→<br>`IsFailed`"
  t: "boolean"
  p: "Required<br>(exactly 1)"
  d: "Masternode list sync fail status"

{% enditemplate %}

Sync Assets

AssetID | AssetName
--- | --- | --- |
0 | MASTERNODE_SYNC_INITIAL
1 | MASTERNODE_SYNC_WAITING
2 | MASTERNODE_SYNC_LIST
3 | MASTERNODE_SYNC_MNW
4 | MASTERNODE_SYNC_GOVERNANCE
-1 | MASTERNODE_SYNC_FAILED
999 | MASTERNODE_SYNC_FINISHED

*Example from Axe Core 0.12.2*

Get Masternode sync status

{% highlight bash %}
axe-cli -testnet mnsync status
{% endhighlight %}

Result:
{% highlight json %}
{
  "AssetID": 999,
  "AssetName": "MASTERNODE_SYNC_FINISHED",
  "AssetStartTime": 1507662300,
  "Attempt": 0,
  "IsBlockchainSynced": true,
  "IsMasternodeListSynced": true,
  "IsWinnersListSynced": true,
  "IsSynced": true,
  "IsFailed": false
}
{% endhighlight %}


**Command Mode - `next`**

*Result---next command return status*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Command return status"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet mnsync next
{% endhighlight %}

Result:
{% highlight text %}
sync updated to MASTERNODE_SYNC_LIST
{% endhighlight %}


**Command Mode - `reset`**

*Result---reset command return status*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "Command return status:<br>`success` or `failure`"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet mnsync reset
{% endhighlight %}

Result:
{% highlight text %}
success
{% endhighlight %}

*See also:*

* [Masternode][rpc masternode]: {{summary_masternode}}
* [MasternodeBroadcast][rpc masternodebroadcast]: {{summary_masternodeBroadcast}}
* [MasternodeList][rpc masternodelist]: {{summary_masternodeList}}

{% endautocrossref %}
