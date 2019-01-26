{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getgovernanceinfo.md" %}

##### GetGovernanceInfo
{% include helpers/subhead-links.md %}

<!-- __ -->

{% assign summary_getGovernanceInfo="returns an object containing governance parameters." %}

{% autocrossref %}

The `getgovernanceinfo` RPC {{summary_getGovernanceInfo}}

*Parameters: none*

*Result---information about the governance system*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "Information about the governance system"

- n: "→<br>`governanceminquorum`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The absolute minimum number of votes needed to trigger a governance action"

- n: "→<br>`masternodewatchdogmaxseconds`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "*DEPRECATED in Axe Core 0.12.3*<br><br>Sentinel watchdog expiration time in seconds"

- n: "→<br>`sentinelpingmaxseconds`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "*Added in Axe Core 0.12.3.0*<br><br>Sentinel ping expiration time in seconds"

- n: "→<br>`proposalfee`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The collateral transaction fee which must be paid to create a proposal in Axe"

- n: "→<br>`superblockcycle`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of blocks between superblocks"

- n: "→<br>`lastsuperblock`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The block number of the last superblock"

- n: "→<br>`nextsuperblock`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The block number of the next superblock"

{% enditemplate %}

*Example from Axe Core 0.13.0.0*

{% highlight bash %}
axe-cli -testnet getgovernanceinfo
{% endhighlight %}

Result:
{% highlight json %}

  "governanceminquorum": 1,
  "masternodewatchdogmaxseconds": 3600,
  "sentinelpingmaxseconds": 3600,
  "proposalfee": 5.00000000,
  "superblockcycle": 24,
  "lastsuperblock": 250824,
  "nextsuperblock": 250848
}
{% endhighlight %}

*See also:*

* [GObject][rpc gobject]: {{summary_gObject}}

{% endautocrossref %}
