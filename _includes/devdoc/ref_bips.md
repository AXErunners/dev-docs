{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/ref_bips.md" %}

{% autocrossref %}
<!-- __ -->

## Improvement Proposals
{% include helpers/subhead-links.md %}

### Axe (DIPs)
{% include helpers/subhead-links.md %}

Similar to Bitcoin's BIPs, a Axe Improvement Proposal ([DIP](https://github.com/axerunners/dips)) is a design
document for providing information to the Axe community, or describing a new
feature for Axe processes/environment. The DIP should provide a
concise technical specification of the feature and a rationale for the feature.

{% endautocrossref %}

#### DIP Summary Table
<!-- no subhead-links here -->

Information from [Axe DIP repository](https://github.com/axerunners/dips/blob/master/README.md).

{% include layout/base/dip-table.html %}


{% autocrossref %}

### Bitcoin (BIPs)
{% include helpers/subhead-links.md %}

A Bitcoin Improvement Proposal (BIP) is a design document providing information
to the Bitcoin community, or describing a new feature for Bitcoin or its
processes or environment.

Since Axe is forked from Bitcoin, some BIPs are applicable to both. The following
table provides a list of the BIPs that are relevant to Axe. Some BIPs may only
be partially implemented or modified to meet Axe requirements. The `Axe Status`
column indicates if any changes were made.

{% endautocrossref %}

#### BIP Summary Table
<!-- no subhead-links here -->

Axe-specific BIP information derived from Axe developer
[QuantumExplorer's BIP repository](https://github.com/QuantumExplorer/bips/blob/master/README.mediawiki).

{% include layout/base/bip-table.html %}

\* These BIPs are not Bitcoin or Axe specific (i.e. BIP-0044 Multi-Account Hierarchy for Deterministic Wallets). Generally relates to the Application Layer and not specifically the reference client.
