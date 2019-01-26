{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/listaddressgroupings.md" %}

##### ListAddressGroupings
{% include helpers/subhead-links.md %}

{% assign summary_listAddressGroupings="lists groups of addresses that may have had their common ownership made public by common use as inputs in the same transaction or from being used as change from a previous transaction." %}

<!-- __ -->

{% autocrossref %}

*Requires wallet support.*

The `listaddressgroupings` RPC {{summary_listAddressGroupings}}

*Parameters: none*

*Result---an array of arrays describing the groupings*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array containing the groupings.  May be empty"

- n: "→<br>Groupings"
  t: "array"
  p: "Optional<br>(0 or more)"
  d: "An array containing arrays of addresses which can be associated with each other"

- n: "→ →<br>Address Details"
  t: "array"
  p: "Required<br>(1 or more)"
  d: "An array containing information about a particular address"

- n: "→ → →<br>Address"
  t: "string (base58)"
  p: "Required<br>(exactly 1)"
  d: "The address in base58check format"

- n: "→ → →<br>Balance"
  t: "number (bitcoins)"
  p: "Required<br>(exactly 1)"
  d: "The current spendable balance of the address, not counting unconfirmed transactions"

- n: "→ → →<br>Account"
  t: "string"
  p: "Optional<br>(0 or 1)"
  d: "*Deprecated: will be removed in a later version of Axe Core*<br><br>The account the address belongs to, if any.  This field will not be returned for change addresses.  The default account is an empty string (\"\")"

{% enditemplate %}

*Example from Axe Core 0.12.2*

{% highlight bash %}
axe-cli -testnet listaddressgroupings
{% endhighlight %}

Result (edited to only three results):

{% highlight json %}
[
  [
    [
      "yNpezfFDfoikDuT1f4iK75AiLp2YLPsGAb",
      0.00000000
    ]
  ],
  [
    [
      "yX7SvurfpwSD7QDA3pZNYNxt6kPPiZmRAk",
      27.02970000,
      "Test1"
    ]
  ],
  [
    [
      "ygMuVDN2raRBma86GpwyQeJV18kR1261d1",
      11.00000000,
      "Test2"
    ]
  ]
]
{% endhighlight %}

*See also*

* [GetAddressesByAccount][rpc getaddressesbyaccount]: {{summary_getAddressesByAccount}}
* [GetTransaction][rpc gettransaction]: {{summary_getTransaction}}
* [ListAddressBalances][rpc listaddressbalances]: {{summary_listAddressBalances}}

{% endautocrossref %}
