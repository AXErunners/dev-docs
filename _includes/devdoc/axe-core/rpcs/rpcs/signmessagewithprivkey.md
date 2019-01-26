{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/signmessagewithprivkey.md" %}

##### SignMessageWithPrivKey
{% include helpers/subhead-links.md %}

{% assign summary_signMessageWithPrivKey="signs a message with a given private key." %}

<!-- __ -->

{% autocrossref %}

*Added in Axe Core 0.12.3 / Bitcoin Core 0.13.0*

The `signmessagewithprivkey` RPC {{summary_signMessageWithPrivKey}}

*Parameter #1---the private key to sign with*

{% itemplate ntpd1 %}
- n: "Private Key"
  t: "string (base58)"
  p: "Required<br>(exactly 1)"
  d: "The private key to sign the message with encoded in base58check using wallet import format (WIF)"

{% enditemplate %}

*Parameter #2---the message to sign*

{% itemplate ntpd1 %}
- n: "Message"
  t: "string"
  p: "Required<br>(exactly 1)"
  d: "The message to sign"

{% enditemplate %}

*Result---the message signature*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string (base64)"
  p: "Required<br>(exactly 1)"
  d: "The signature of the message, encoded in base64."

{% enditemplate %}

*Example from Axe Core 0.12.3*

Sign a the message "Hello, World!" using the following private key:

{% highlight bash %}
axe-cli signmessagewithprivkey cNKbZBqUCjuBRSnAJWwFWxKESJ5Lw\
G4uxBSJ1UeBNBGVRupFKr6S "Hello, World!"
{% endhighlight %}

Result:

{% highlight text %}
IBx8jxFjutPlcZcFdQPlA2n/B4yTrYhH43qYJURKRj7LWhSD0ERE/nnRLOnXi/gwULUcqfqOKqnqkSvuJjlgEvc=
{% endhighlight %}

*See also*

* [SignMessage][rpc signmessage]: {{summary_signMessage}}
* [VerifyMessage][rpc verifymessage]: {{summary_verifyMessage}}

{% endautocrossref %}
