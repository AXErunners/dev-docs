{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/example_testing.md" %}

## Testing Applications
{% include helpers/subhead-links.md %}

<!-- __ -->

{% autocrossref %}

Axe Core provides testing tools designed to let developers
test their applications with reduced risks and limitations.

{% endautocrossref %}

### Testnet
{% include helpers/subhead-links.md %}

{% autocrossref %}

When run with no arguments, all Axe Core programs default to Axe's main
network ([mainnet][/en/glossary/mainnet]{:#term-mainnet}{:.term}). However, for development,
it's safer and cheaper to use Axe's test network (testnet)
where the haks spent have no real-world value. Testnet also relaxes some
restrictions (such as standard transaction checks) so you can test functions
which might currently be disabled by default on mainnet.

To use testnet, use the argument `-testnet`<!--noref--> with `axe-cli`, `axed`
or `axe-qt` or add `testnet=1`<!--noref--> to your `axe.conf` file as
[described earlier][axed initial setup].  To get free haks for testing,
check the faucets listed below. They are community supported and due to
potentially frequent Testnet changes, one or more of them may be unavailable at
a given time:

* [Testnet Faucet - Axe.org]
* [Testnet Faucet - Masternode.io]
* [Testnet Faucet - Axeninja.pl]

Testnet is a public resource provided for free by members of the community,
so please don't abuse it.

{% endautocrossref %}

### Regtest Mode
{% include helpers/subhead-links.md %}

{% autocrossref %}

For situations where interaction with random peers and blocks is unnecessary or
unwanted, Axe Core's regression test mode (regtest mode) lets you
instantly create a brand-new private block chain with the same basic
rules as testnet---but one major difference: you choose when to create
new blocks, so you have complete control over the environment.

Many developers consider regtest mode the preferred way to develop new
applications. The following example will let you create a regtest
environment after you first [configure axed][axed initial setup].

{% endautocrossref %}

{% highlight bash %}
> axed -regtest -daemon
Axe Core server starting
{% endhighlight %}

{% autocrossref %}

Start `axed` in regtest mode to create a private block chain.

{% endautocrossref %}

~~~
## Axe Core
axe-cli -regtest generate 101
~~~

{% autocrossref %}

Generate 101 blocks using a special RPC
which is only available in regtest mode. This takes less than a second on
a generic PC. Because this is a new block chain using Axe's default
rules, the first blocks pay a block reward of 500 axe.  Unlike
mainnet, in regtest mode only the first 150 blocks pay a reward of 500 axe.
However, a block must have 100 confirmations before that reward can be
spent, so we generate 101 blocks to get access to the coinbase
transaction from block #1.

{% endautocrossref %}

{% highlight bash %}
axe-cli -regtest getbalance
500.00000000
{% endhighlight %}

{% autocrossref %}

Verify that we now have 500 axe available to spend.

You can now use Axe Core RPCs prefixed with `axe-cli -regtest`<!--noref-->.

Regtest wallets and block chain state (chainstate) are saved in the `regtest`<!--noref-->
subdirectory of the Axe Core configuration directory. You can safely
delete the `regtest`<!--noref--> subdirectory and restart Axe Core to
start a new regtest. (See the [Developer Examples Introduction][devexamples] for default
configuration directory locations on various operating systems. Always back up
mainnet wallets before performing dangerous operations such as deleting.)

{% endautocrossref %}

### Devnet Mode
{% include helpers/subhead-links.md %}

{% autocrossref %}

Developer networks (devnets) have some aspects of testnet and some aspects of
regtest. Unlike testnet, multiple independent devnets can be created and coexist
without interference. Each one is identified by a name which is hardened into a
"devnet genesis" block, which is automatically positioned at height 1. Validation
rules will ensure that a node from `devnet<!--noref-->=test1` never be able to
accept blocks from `devnet<!--noref-->=test2`. This is done by checking the
expected devnet genesis block.

The genesis block of the devnet is the same as the one from regtest. This
starts the devnet with a very low difficulty, allowing quick generation of a
sufficient balance to create a masternode.

The devnet name is put into the sub-version of the `version` message.
If a node connects to the wrong network, it will immediately be disconnected.

To use devnet, use the argument `-devnet=<name>`<!--noref--> with `axe-cli`,
`axed`or `axe-qt` or add `devnet<!--noref-->=<name>` to your `axe.conf` file as
[described earlier](#configuration-file).

Devnets must be assigned both `-port` and `-rpcport` unless they are not
listening (`-listen=0`). It is possible to run a devnet on a private (RFC1918)
network by using the `-allowprivatenet=1` argument.

{% endautocrossref %}

Example devnet start command:

{% highlight bash %}
> axed -devnet=mydevnet -rpcport=18998 -port=18999 -daemon
Axe Core server starting
{% endhighlight %}

{% autocrossref %}

You can now use Axe Core RPCs prefixed with `axe-cli -devnet=<name>`<!--noref-->.

Devnet wallets and block chain state (chainstate) are saved in the `devnet-<name>`<!--noref-->
subdirectory of the Axe Core configuration directory. You can safely
delete the `devnet-<name>`<!--noref--> subdirectory and restart Axe Core to
start a new devnet. (See the [Developer Examples Introduction][devexamples] for default
configuration directory locations on various operating systems. Always back up
mainnet wallets before performing dangerous operations such as deleting.)

Eventually, there may be many public and/or private devnets that vary in size
and function. Providing the correct devnet name and the seed node of the network
will be all that is required to join.

An old devnet can be easily dropped and a new one started just by destroying all
nodes and recreating them with a new devnet name. This works best in combination
with an automated deployment using something like Ansible and Terraform. The
[Axe Cluster Ansible](https://github.com/axerunners/axe-cluster-ansible) provides
a way to do this (currently a work-in-progress at an early development stage).

{% endautocrossref %}
