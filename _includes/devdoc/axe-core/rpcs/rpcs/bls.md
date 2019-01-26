{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/bls.md" %}

<!-- __ -->

##### BLS
{% include helpers/subhead-links.md %}

{% assign summary_bLS="provides a set of commands to execute BLS-related actions." %}

{% autocrossref %}

*Added in Axe Core 0.13.0*

The `bls` RPC {{summary_bLS}}

{% endautocrossref %}

###### BLS<!--noref--> Generate
<!-- no subhead-links here -->

{% autocrossref %}

The `bls<!--noref--> generate` RPC creates a new BLS secret/public key pair.

*Parameters: none*

*Result---a secret/public key pair*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "BLS key pair"

- n: "→<br>`secret`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "A BLS secret key"

- n: "→<br>`public`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "A BLS public key"
{% enditemplate %}

*Example from Axe Core 0.13.0*

{% highlight bash %}
axe-cli -testnet bls generate
{% endhighlight %}

Result:
{% highlight json %}
{
  "secret": "52f35cd3d977a505485f2474e7e71ef3f60f859603d72ad6b0fa7f7bd163e144",
  "public": "885d01d746c3e4d2093b0975de2d8c1f3e5a2c3e8fdaaed929f86fc9fbb278a095248163c101a2456650b415776b7990"
}
{% endhighlight %}

*See also: none*

{% endautocrossref %}
