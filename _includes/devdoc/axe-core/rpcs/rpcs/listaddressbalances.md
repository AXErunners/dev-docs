{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/listaddressbalances.md" %}

##### ListAddressBalances
{% include helpers/subhead-links.md %}

{% assign summary_listAddressBalances="lists addresses of this wallet and their balances" %}

<!-- __ -->

{% autocrossref %}

The `listaddressbalances` RPC {{summary_listAddressBalances}}

*Parameter #1---Minimum Amount*

{% itemplate ntpd1 %}
- n: "Minimum Amount"
  t: "numeric (int)"
  p: "Optional<br>(0 or 1)"
  d: "Minimum balance in AXE an address should have to be shown in the list (default=0)"

{% enditemplate %}

*Result---an object containing the addresses and their balances*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "An object containing key/value pairs corresponding to the addresses with balances > the minimum amount.  May be empty"

- n: "→<br>Address/Amount"
  t: "string (base58):<br>number (AXE)"
  p: "Optional<br>(1 or more)"
  d: "A key/value pair with a base58check-encoded string containing the address as the key, and an amount of AXE as the value"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli -testnet listaddressbalances 25
{% endhighlight %}

Result:
{% highlight json %}
{
  "yMQtQkcMBXrAZyqTGZeg7tQHzmbypGEP4w": 299.99990000,
  "yRyfgrHm4f5A8GGvqpqTFvbCrCQHJm1L4V": 99.13570000,
  "ybePwhPzUbiWzFhkgxPgP6iHnTLTyFH6sU": 123.45600000,
  "ycCdPQnjNEVRgrQY8j6mxEx9h7oaQpo5Ge": 500.00000000
}
{% endhighlight %}

*See also:*

* [ListAddressGroupings][rpc listaddressgroupings]: {{summary_listAddressGroupings}}

{% endautocrossref %}
