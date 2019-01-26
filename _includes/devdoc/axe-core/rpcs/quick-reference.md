{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/quick-reference.md" %}

#### Quick Reference {#rpc-quick-reference}
{% include helpers/subhead-links.md %}
<!-- __ -->
{% comment %}
Styling notes: use highly-visible style for upcoming changes (not yet
released) and changes made in the last 6 months.  Use less-visible
style for changes made up to two years ago.  Don't point out
changes made more than two years ago.

Use v0.n.n in abbreviation title to prevent autocrossrefing.
{% endcomment %}

<!-- Axe - Not Implemented -->
{% assign AXE_NOT_IMPLEMENTED='**<abbr title="Not Implemented in Axe">Not Implemented</abbr>**' %}

<!-- Axe Core 0.13.0.0 Nov 2018 -->
{% assign AXE_NEW0_13_0='**<abbr title="New in Axe Core v0.13.0">New in Axe Core 0.13.0</abbr>**' %}
{% assign AXE_UPDATED0_13_0='**<abbr title="Updated in Axe Core v0.13.0">Updated in Axe Core 0.13.0</abbr>**' %}

<!-- Axe Core 0.12.3.0 July 2018 -->
{% assign AXE_NEW0_12_3='**<abbr title="New in Axe Core v0.12.3">New in Axe Core 0.12.3</abbr>**' %}
{% assign AXE_UPDATED0_12_3='**<abbr title="Updated in Axe Core v0.12.3">Updated in Axe Core 0.12.3</abbr>**' %}

<!-- Axe Core 0.12.2.0 Nov 2017 -->
{% assign AXE_NEW0_12_2='**<abbr title="New in Axe Core v0.12.2">New in Axe Core 0.12.2</abbr>**' %}
{% assign AXE_UPDATED0_12_2='**<abbr title="Updated in Axe Core v0.12.2">Updated in Axe Core 0.12.2</abbr>**' %}

<!-- Axe Core 0.12.1.0 Feb 2017 -->
{% assign AXE_NEW0_12_1='*<abbr title="New in Axe Core v0.12.1">New in Axe Core 0.12.1</abbr>*' %}
{% assign AXE_UPDATED0_12_1='*<abbr title="Updated in Axe Core v0.12.1">Updated in Axe Core 0.12.1</abbr>*' %}

<!-- Darkcoin Core 0.11.0 Jan 2015 -->
{% assign DARKCOIN_NEW0_11_0='*<abbr title="New in Darkcoin Core v0.11.0">New in Darkcoin Core 0.11.0</abbr>*' %}
{% assign DARKCOIN_UPDATED0_11_0='*<abbr title="Updated in Axe Core v0.11.0">Updated in Darkcoin Core 0.11.0</abbr>*' %}

<!-- Deprecated -->
{% assign DEPRECATED='**<abbr title="Deprecated; will be removed in a future version of Bitcoin Core">Deprecated</abbr>**' %}

<!-- Bitcoin Core 0.14.1 April 2017 -->
{% assign UPDATED0_14_0='**<abbr title="Updated in Bitcoin Core v0.14.1">Updated in Bitcoin Core 0.14.1</abbr>**' %}

<!-- Bitcoin Core 0.14.0 March 2017 -->
{% assign NEW0_14_0='**<abbr title="New in Bitcoin Core v0.14.0">New in Bitcoin Core 0.14.0</abbr>**' %}
{% assign UPDATED0_14_0='**<abbr title="Updated in Bitcoin Core v0.14.0">Updated in Bitcoin Core 0.14.0</abbr>**' %}

<!-- Bitcoin Core 0.13.1 September 2016 -->
{% assign UPDATED0_13_1='*<abbr title="Updated in Bitcoin Core v0.13.1">Updated in Bitcoin Core 0.13.1</abbr>*' %}

<!-- Bitcoin Core 0.13.0 August 2016 -->
{% assign NEW0_13_0='*<abbr title="New in Bitcoin Core v0.13.0">New in Bitcoin Core 0.13.0</abbr>*' %}
{% assign UPDATED0_13_0='*<abbr title="Updated in Bitcoin Core v0.13.0">Updated in Bitcoin Core 0.13.0</abbr>*' %}

<!-- Bitcoin Core 0.12.1 April 2016 -->
{% assign UPDATED0_12_1='*<abbr title="Updated in Bitcoin Core v0.12.1">Updated in Bitcoin Core 0.12.1</abbr>*' %}

<!-- Bitcoin Core 0.12.0 February 2016 -->
{% assign NEW0_12_0='*<abbr title="New in Bitcoin Core v0.12.0">New in Bitcoin Core 0.12.0</abbr>*' %}
{% assign UPDATED0_12_0='*<abbr title="Updated in Bitcoin Core v0.12.0">Updated in Bitcoin Core 0.12.0</abbr>*' %}

<!-- Bitcoin Core 0.11.0 July 2015 -->
{% assign NEW0_11_0='*<abbr title="New in Bitcoin Core v0.11.0">New in Bitcoin Core 0.11.0</abbr>*' %}

<!-- the summaries used below are defined in the files for the
     particular RPC and aggregated into this helper file by the makefile
     function manual-update-summaries-file. For example, to edit the
     summary for GetBestBlockHash, edit
     _includes/rpc/getbestblockhash.md and run `make manual-update-summaries`. -->
{% include helpers/summaries.md %}

####RPC Summary Table
<!-- no subhead-links here -->

{% include layout/base/rpc-table.html %}

#### Addressindex RPCs
{:.no_toc}
<!-- no subhead-links here -->
These RPCs are all Axe-specific and not found in Bitcoin Core

{% autocrossref %}

* [GetAddressBalance][rpc getaddressbalance]: {{summary_getAddressBalance}}
* [GetAddressDeltas][rpc getaddressdeltas]: {{summary_getAddressDeltas}}
* [GetAddressMempool][rpc getaddressmempool]: {{summary_getAddressMempool}}
* [GetAddressTxids][rpc getaddresstxids]: {{summary_getAddressTxids}}
* [GetAddressUtxos][rpc getaddressutxos]: {{summary_getAddressUtxos}}

{% endautocrossref %}


#### Block Chain RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [GetBestBlockHash][rpc getbestblockhash]: {{summary_getBestBlockHash}}
* [GetBlock][rpc getblock]: {{summary_getBlock}} {{AXE_UPDATED0_13_0}}
* [GetBlockChainInfo][rpc getblockchaininfo]: {{summary_getBlockChainInfo}} {{AXE_UPDATED0_13_0}} {{UPDATED0_12_1}}
* [GetBlockCount][rpc getblockcount]: {{summary_getBlockCount}}
* [GetBlockHash][rpc getblockhash]: {{summary_getBlockHash}}
* [GetBlockHashes][rpc getblockhashes]: {{summary_getBlockHashes}} {{AXE_NEW0_12_1}}
* [GetBlockHeader][rpc getblockheader]: {{summary_getBlockHeader}} {{NEW0_12_0}}
* [GetBlockHeaders][rpc getblockheaders]: {{summary_getBlockHeaders}} {{AXE_NEW0_12_1}}
* [GetChainTips][rpc getchaintips]: {{summary_getChainTips}} {{AXE_UPDATED0_12_3}}
* [GetDifficulty][rpc getdifficulty]: {{summary_getDifficulty}}
* [GetMemPoolAncestors][rpc getmempoolancestors]: {{summary_getMemPoolAncestors}} {{AXE_NEW0_12_3}} {{NEW0_13_0}}
* [GetMemPoolDescendants][rpc getmempooldescendants]: {{summary_getMemPoolDescendants}} {{AXE_NEW0_12_3}} {{NEW0_13_0}}
* [GetMemPoolEntry][rpc  getmempoolentry]: {{summary_getMemPoolEntry}} {{AXE_NEW0_12_3}} {{NEW0_13_0}}
* [GetMemPoolInfo][rpc getmempoolinfo]: {{summary_getMemPoolInfo}} {{UPDATED0_12_0}}
* [GetRawMemPool][rpc getrawmempool]: {{summary_getRawMemPool}} {{AXE_UPDATED0_12_3}} {{UPDATED0_13_0}}
* [GetSpentInfo][rpc getspentinfo]: {{summary_getSpentInfo}} {{AXE_NEW0_12_1}}
* [GetTxOut][rpc gettxout]: {{summary_getTxOut}}
* [GetTxOutProof][rpc gettxoutproof]: {{summary_getTxOutProof}} {{NEW0_11_0}}
* [GetTxOutSetInfo][rpc gettxoutsetinfo]: {{summary_getTxOutSetInfo}}
* [PreciousBlock][rpc preciousblock]: {{summary_preciousBlock}} {{AXE_NEW0_12_3}} {{NEW0_14_0}}
* [PruneBlockChain][rpc pruneblockchain]: {{summary_pruneBlockChain}} {{AXE_NEW0_12_3}} {{NEW0_14_0}}
* [VerifyChain][rpc verifychain]: {{summary_verifyChain}}
* [VerifyTxOutProof][rpc verifytxoutproof]: {{summary_verifyTxOutProof}} {{NEW0_11_0}}

{% endautocrossref %}

#### Control RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [Debug][rpc debug]: {{summary_debug}} {{AXE_UPDATED0_12_3}}
* [GetInfo][rpc getinfo]: {{summary_getInfo}} {{DEPRECATED}}
* [GetMemoryInfo][rpc getmemoryinfo]: {{summary_getMemoryInfo}} {{AXE_NEW0_12_3}} {{NEW_14_0}}
* [Help][rpc help]: {{summary_help}}
* [Stop][rpc stop]: {{summary_stop}}

{% endautocrossref %}

#### Axe RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [GetGovernanceInfo][rpc getgovernanceinfo]: {{summary_getGovernanceInfo}} {{AXE_UPDATED0_13_0}}
* [GetPoolInfo][rpc getpoolinfo]: {{summary_getPoolInfo}}
* [GetSuperblockBudget][rpc getsuperblockbudget]: {{summary_getSuperblockBudget}}
* [GObject][rpc gobject]: {{summary_gObject}} {{AXE_UPDATED0_13_0}}
* [Masternode][rpc masternode]: {{summary_masternode}} {{AXE_UPDATED0_13_0}}
* [MasternodeBroadcast][rpc masternodebroadcast]: {{summary_masternodeBroadcast}}
* [MasternodeList][rpc masternodelist]: {{summary_masternodeList}} {{AXE_UPDATED0_12_3}}
* [MnSync][rpc mnsync]: {{summary_mnSync}}
* [PrivateSend][rpc privatesend]: {{summary_privateSend}} {{AXE_UPDATED0_12_3}}
* [SentinelPing][rpc sentinelping]: {{summary_sentinelPing}}
* [Spork][rpc spork]: {{summary_spork-rpc}}
* [VoteRaw][rpc voteraw]: {{summary_voteRaw}}

{% endautocrossref %}

#### Evolution RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [BLS][rpc bls]: {{summary_bls}} {{AXE_NEW0_13_0}}
* [ProTx][rpc protx]: {{summary_proTx}} {{AXE_NEW0_13_0}}

{% endautocrossref %}

#### Generating RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [Generate][rpc generate]: {{summary_generate}} {{AXE_UPDATED0_12_3}} {{UPDATED0_13_0}}
* [GenerateToAddress][rpc generatetoaddress]: {{summary_generateToAddress}} {{AXE_NEW0_12_3}} {{NEW0_13_0}}

{% endautocrossref %}

#### Mining RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [GetBlockTemplate][rpc getblocktemplate]: {{summary_getBlockTemplate}} {{AXE_UPDATED0_13_0}}
* [GetMiningInfo][rpc getmininginfo]: {{summary_getMiningInfo}} {{UPDATED0_14_0}}
* [GetNetworkHashPS][rpc getnetworkhashps]: {{summary_getNetworkHashPS}}
* [PrioritiseTransaction][rpc prioritisetransaction]: {{summary_prioritiseTransaction}}
* [SubmitBlock][rpc submitblock]: {{summary_submitBlock}}

{% endautocrossref %}

#### Network RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [AddNode][rpc addnode]: {{summary_addNode}} {{UPDATED0_14_0}}
* [ClearBanned][rpc clearbanned]: {{summary_clearBanned}} {{NEW0_12_0}}
* [DisconnectNode][rpc disconnectnode]: {{summary_disconnectNode}} {{NEW0_12_0}} {{UPDATED0_14_1}}
* [GetAddedNodeInfo][rpc getaddednodeinfo]: {{summary_getAddedNodeInfo}} {{AXE_UPDATED0_12_3}} {{UPDATED0_14_0}}
* [GetConnectionCount][rpc getconnectioncount]: {{summary_getConnectionCount}}
* [GetNetTotals][rpc getnettotals]: {{summary_getNetTotals}} {{UPDATED0_12_0}}
* [GetNetworkInfo][rpc getnetworkinfo]: {{summary_getNetworkInfo}} {{AXE_UPDATED0_12_3}} {{UPDATED0_13_0}}
* [GetPeerInfo][rpc getpeerinfo]: {{summary_getPeerInfo}} {{UPDATED0_13_0}}
* [ListBanned][rpc listbanned]: {{summary_listBanned}} {{NEW0_12_0}}
* [Ping][rpc ping]: {{summary_ping-rpc}}
* [SetBan][rpc setban]: {{summary_setBan}} {{NEW0_12_0}}
* [SetNetworkActive][rpc setnetworkactive]: {{summary_setNetworkActive}} {{NEW0_14_0}}

{% endautocrossref %}

#### Raw Transaction RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [CreateRawTransaction][rpc createrawtransaction]: {{summary_createRawTransaction}} {{AXE_UPDATED0_12_3}} {{UPDATED0_14_1}}
* [DecodeRawTransaction][rpc decoderawtransaction]: {{summary_decodeRawTransaction}} {{UPDATED0_13_0}}
* [DecodeScript][rpc decodescript]: {{summary_decodeScript}}
* [FundRawTransaction][rpc fundrawtransaction]: {{summary_fundRawTransaction}} {{AXE_UPDATED0_12_3}} {{UPDATED0_14_0}}
* [GetRawTransaction][rpc getrawtransaction]: {{summary_getRawTransaction}} {{AXE_UPDATED0_13_0}} {{UPDATED0_14_0}}
* [SendRawTransaction][rpc sendrawtransaction]: {{summary_sendRawTransaction}}
* [SignRawTransaction][rpc signrawtransaction]: {{summary_signRawTransaction}}

{% endautocrossref %}

#### Utility RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [CreateMultiSig][rpc createmultisig]: {{summary_createMultiSig}}
* [EstimateFee][rpc estimatefee]: {{summary_estimateFee}}
* [EstimatePriority][rpc estimatepriority]: {{summary_estimatePriority}} {{DEPRECATED}}
* [EstimateSmartFee][rpc estimatesmartfee]: {{summary_estimateSmartFee}} {{DEPRECATED}}
* [EstimateSmartPriority][rpc estimatesmartpriority]: {{summary_estimateSmartPriority}} {{DEPRECATED}}
* [SetBIP69Enabled][rpc setbip69enabled]: {{summary_setBIP69Enabled}}  {{AXE_NEW0_12_3}}
* [SignMessageWithPrivKey][rpc signmessagewithprivkey]: {{summary_signMessageWithPrivKey}}  {{AXE_NEW0_12_3}} {{NEW0_13_0}}
* [ValidateAddress][rpc validateaddress]: {{summary_validateAddress}} {{AXE_UPDATED0_12_3}} {{UPDATED0_13_0}}
* [VerifyMessage][rpc verifymessage]: {{summary_verifyMessage}}

{% endautocrossref %}

#### Wallet RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

**Note:** the wallet RPCs are only available if Axe Core was built
with [wallet support][]{:#term-wallet-support}{:.term}, which is the
default.

* [AbandonTransaction][rpc abandontransaction]: {{summary_abandonTransaction}} {{NEW0_12_0}}
* [AddMultiSigAddress][rpc addmultisigaddress]: {{summary_addMultiSigAddress}}
* [BackupWallet][rpc backupwallet]: {{summary_backupWallet}}
* [DumpHDInfo][rpc dumphdinfo]: {{summary_dumpHDInfo}} {{AXE_NEW0_12_2}}
* [DumpPrivKey][rpc dumpprivkey]: {{summary_dumpPrivKey}}
* [DumpWallet][rpc dumpwallet]: {{summary_dumpWallet}} {{AXE_UPDATED0_13_0}}
* [EncryptWallet][rpc encryptwallet]: {{summary_encryptWallet}}
* [GetAccount][rpc getaccount]: {{summary_getAccount}} {{DEPRECATED}}
* [GetAccountAddress][rpc getaccountaddress]: {{summary_getAccountAddress}} {{DEPRECATED}}
* [GetAddressesByAccount][rpc getaddressesbyaccount]: {{summary_getAddressesByAccount}} {{DEPRECATED}}
* [GetBalance][rpc getbalance]: {{summary_getBalance}} {{AXE_UPDATED0_13_0}}
* [GetNewAddress][rpc getnewaddress]: {{summary_getNewAddress}}
* [GetRawChangeAddress][rpc getrawchangeaddress]: {{summary_getRawChangeAddress}}
* [GetReceivedByAccount][rpc getreceivedbyaccount]: {{summary_getReceivedByAccount}} {{AXE_UPDATED0_13_0}} {{DEPRECATED}}
* [GetReceivedByAddress][rpc getreceivedbyaddress]: {{summary_getReceivedByAddress}} {{AXE_UPDATED0_13_0}}
* [GetTransaction][rpc gettransaction]: {{summary_getTransaction}} {{UPDATED0_12_0}}
* [GetUnconfirmedBalance][rpc getunconfirmedbalance]: {{summary_getUnconfirmedBalance}}
* [GetWalletInfo][rpc getwalletinfo]: {{summary_getWalletInfo}}  {{AXE_UPDATED0_12_3}}
* [ImportAddress][rpc importaddress]: {{summary_importAddress}}
* [ImportElectrumWallet][rpc importelectrumwallet]: {{summary_importElectrumWallet}} {{AXE_NEW0_12_1}}
* [ImportMulti][rpc importmulti]: {{summary_importMulti}} {{AXE_NEW0_12_3}} {{NEW0_14_0}}
* [ImportPrivKey][rpc importprivkey]: {{summary_importPrivKey}}
* [ImportPrunedFunds][rpc importprunedfunds]: {{summary_importPrunedFunds}} {{AXE_NEW0_12_3}} {{NEW0_13_0}}
* [ImportPubKey][rpc importpubkey]: {{summary_importPubKey}}
* [ImportWallet][rpc importwallet]: {{summary_importWallet}}
* [InstantSendToAddress][rpc instantsendtoaddress]: {{summary_instantSendToAddress}}
* [KeePass][rpc keepass]: {{summary_keepass}} {{DARKCOIN_NEW0_11_0}}
* [KeyPoolRefill][rpc keypoolrefill]: {{summary_keyPoolRefill}}
* [ListAccounts][rpc listaccounts]: {{summary_listAccounts}} {{AXE_UPDATED0_13_0}} {{DEPRECATED}}
* [ListAddressBalances][rpc listaddressbalances]: {{summary_listAddressBalances}} {{AXE_NEW0_12_3}}
* [ListAddressGroupings][rpc listaddressgroupings]: {{summary_listAddressGroupings}}
* [ListLockUnspent][rpc listlockunspent]: {{summary_listLockUnspent}}
* [ListReceivedByAccount][rpc listreceivedbyaccount]: {{summary_listReceivedByAccount}} {{AXE_UPDATED0_13_0}} {{DEPRECATED}}
* [ListReceivedByAddress][rpc listreceivedbyaddress]: {{summary_listReceivedByAddress}} {{AXE_UPDATED0_13_0}}
* [ListSinceBlock][rpc listsinceblock]: {{summary_listSinceBlock}}
* [ListTransactions][rpc listtransactions]: {{summary_listTransactions}} {{UPDATED0_12_1}}
* [ListUnspent][rpc listunspent]: {{summary_listUnspent}} {{AXE_UPDATED0_12_3}} {{UPDATED0_13_0}}
* [LockUnspent][rpc lockunspent]: {{summary_lockUnspent}}
* [Move][rpc move]: {{summary_move}} {{DEPRECATED}}
* [RemovePrunedFunds][rpc removeprunedfunds]: {{summary_removePrunedFunds}} {{AXE_NEW0_12_3}} {{NEW0_13_0}}
* [SendFrom][rpc sendfrom]: {{summary_sendFrom}} {{AXE_UPDATED0_13_0}} {{DEPRECATED}}
* [SendMany][rpc sendmany]: {{summary_sendMany}} {{AXE_UPDATED0_13_0}}
* [SendToAddress][rpc sendtoaddress]: {{summary_sendToAddress}}
* [SetAccount][rpc setaccount]: {{summary_setAccount}} {{DEPRECATED}}
* [SetPrivateSendAmount][rpc setprivatesendamount]: {{summary_setPrivateSendAmount}}
* [SetPrivateSendRounds][rpc setprivatesendrounds]: {{summary_setPrivateSendRounds}}
* [SetTxFee][rpc settxfee]: {{summary_setTxFee}}
* [SignMessage][rpc signmessage]: {{summary_signMessage}}
* [WalletLock][rpc walletlock]: {{summary_walletLock}}
* [WalletPassphrase][rpc walletpassphrase]: {{summary_walletPassphrase}}
* [WalletPassphraseChange][rpc walletpassphrasechange]: {{summary_walletPassphraseChange}}

* {{AXE_NOT_IMPLEMENTED}}  [AddWitnessAddress][rpc addwitnessaddress]: {{summary_addWitnessAddress}} {{NEW0_13_0}}
* {{AXE_NOT_IMPLEMENTED}}  [BumpFee][rpc bumpfee]: {{summary_bumpFee}} {{NEW0_14_0}}

{% endautocrossref %}

#### Removed RPCs
{:.no_toc}
<!-- no subhead-links here -->

{% autocrossref %}

* [GetHashesPerSec][rpc gethashespersec]: {{summary_getHashesPerSec}}
* [GetWork][rpc getwork]: {{summary_getWork}}
* [GetGenerate][rpc getgenerate]: {{summary_getGenerate}}
* [SetGenerate][rpc setgenerate]: {{summary_setGenerate}}
{% endautocrossref %}
