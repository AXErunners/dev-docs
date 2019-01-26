{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rest/intro.md" %}

### HTTP REST
{% include helpers/subhead-links.md %}
<!-- __ -->
{% autocrossref %}

Axe Core provides an **unauthenticated** HTTP REST interface.  The interface
runs on the same port as the JSON-RPC interface, by default port 9337 for
mainnet and port 19337 for testnet. It must be enabled by either starting Axe
Core with the `-rest` option or by specifying `rest=1` in the
configuration file. Make sure that the RPC interface is also activated.
Set `server=1` in `axe.conf` or supply the `-server` argument when
starting Axe Core. Starting Axe Core with `axed` automatically
enables the RPC interface.

The interface is not intended for public access and is only accessible
from localhost by default.

{{WARNING}} A web browser can access a HTTP REST interface running on
localhost, possibly allowing third parties to use cross-site scripting
attacks to download your transaction and block data, reducing your
privacy.  If you have privacy concerns, you should not run a browser on
the same computer as a REST-enabled Axe Core node.

The interface uses standard [HTTP status
codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) and
returns a plain-text description of errors for debugging.

{% endautocrossref %}
