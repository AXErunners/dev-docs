{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getmemoryinfo.md" %}

##### GetMemoryInfo
{% include helpers/subhead-links.md %}

{% assign summary_getMemoryInfo="returns information about memory usage." %}

<!-- __ -->

{% autocrossref %}

*Added in Axe Core 0.12.3 / Bitcoin Core 0.14.0*

The `getmemoryinfo` RPC {{summary_getMemoryInfo}}

*Parameters: none*

*Result---information about memory usage*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object"
  p: "Required<br>(exactly 1)"
  d: "An object containing information about memory usage"

- n: "→<br>`locked`"
  t: "string : object"
  p: "Required<br>(exactly 1)"
  d: "An object containing information about locked memory manager"

- n: "→→<br>`used`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "Number of bytes used"

- n: "→→<br>`free`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "Number of bytes available in current arenas"

- n: "→→<br>`total`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "Total number of bytes managed"

- n: "→→<br>`locked`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "Amount of bytes that succeeded locking"

- n: "→→<br>`chunks_used`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "Number allocated chunks"

- n: "→→<br>`chunks_free`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "Number unused chunks"

{% enditemplate %}

*Example from Axe Core 0.12.3*

{% highlight bash %}
axe-cli getmemoryinfo
{% endhighlight %}

Result:

{% highlight json %}
{
  "locked": {
    "used": 32,
    "free": 65504,
    "total": 65536,
    "locked": 65536,
    "chunks_used": 1,
    "chunks_free": 1
  }
}

{% endhighlight %}

*See also*

* [GetMemPoolInfo][rpc getmempoolinfo]: {{summary_getMemPoolInfo}}

{% endautocrossref %}
