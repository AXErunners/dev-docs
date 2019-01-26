{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getblockheader.md" %}

##### GetBlockHeader
{% include helpers/subhead-links.md %}

{% assign summary_getBlockHeader="gets a block header with a particular header hash from the local block database either as a JSON object or as a serialized block header." %}

{% autocrossref %}

*Added in Bitcoin Core 0.12.0*

The `getblockheader` RPC {{summary_getBlockHeader}}

*Parameter #1---header hash*

{% itemplate ntpd1 %}
- n: "Header Hash"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of the block header to get, encoded as hex in RPC byte order"

{% enditemplate %}

*Parameter #2---JSON or hex output*

{% itemplate ntpd1 %}
- n: "Format"
  t: "bool"
  p: "Optional<br>(0 or 1)"
  d: "Set to `false` to get the block header in serialized block format; set to `true` (the default) to get the decoded block header as a JSON object"

{% enditemplate %}

*Result (if format was `false`)---a serialized block header*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string (hex)/null"
  p: "Required<br>(exactly 1)"
  d: "The requested block header as a serialized block, encoded as hex, or JSON `null` if an error occurred"

{% enditemplate %}

*Result (if format was `true` or omitted)---a JSON block header*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "object/null"
  p: "Required<br>(exactly 1)"
  d: "An object containing the requested block, or JSON `null` if an error occurred"

- n: "→<br>`hash`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of this block's block header encoded as hex in RPC byte order.  This is the same as the hash provided in parameter #1"

- n: "→<br>`confirmations`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of confirmations the transactions in this block have, starting at 1 when this block is at the tip of the best block chain.  This score will be -1 if the the block is not part of the best block chain"

- n: "→<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of this block on its block chain"

- n: "→<br>`version`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "This block's version number.  See [block version numbers][section block versions]"

- n: "→<br>`merkleroot`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The merkle root for this block, encoded as hex in RPC byte order"

- n: "→<br>`time`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The time of the block"  

- n: "→<br>`mediantime`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The computed median time of the previous 11 blocks.  Used for validating transaction locktime under BIP113"

- n: "→<br>`nonce`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The nonce which was successful at turning this particular block into one that could be added to the best block chain"

- n: "→<br>`bits`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The value of the *nBits* field in the block header, indicating the target threshold this block's header had to pass"

- n: "→<br>`difficulty`"
  t: "number (real)"
  p: "Required<br>(exactly 1)"
  d: "The estimated amount of work done to find this block relative to the estimated amount of work done to find block 0"

- n: "→<br>`chainwork`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The estimated number of block header hashes miners had to check from the genesis block to this block, encoded as big-endian hex"

- n: "→<br>`previousblockhash`"
  t: "string (hex)"
  p: "Optional<br>(0 or 1)"
  d: "The hash of the header of the previous block, encoded as hex in RPC byte order.  Not returned for genesis block"

- n: "→<br>`nextblockhash`"
  t: "string (hex)"
  p: "Optional<br>(0 or 1)"
  d: "The hash of the next block on the best block chain, if known, encoded as hex in RPC byte order"

{% enditemplate %}

*Changes from Bitcoin - Following items not present in Axe result*

{% itemplate ntpd1 %}

- n: "→<br>`versionHex`"
  t: "number (hex)"
  p: "Required<br>(exactly 1)"
  d: "This block's hex version number.  See [block version numbers][section block versions]"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Get a block header in raw hex:

{% highlight bash %}
axe-cli -testnet getblockheader \
            00000000eb0af5aec7b673975a22593dc0cc763f71ba8de26292410273437078 \
            false
{% endhighlight %}

Result (wrapped):

{% highlight text %}
01000020f61396cfd2747e94cfa088fe1f7875d8171accc22d6e5616edca0cb8\
00000000c31eb96ee1d9e78d61a601371a348c19e4e59698d0ff7869334b72cb\
7ffb76893b41d6593016011d09b2aa3c

{% endhighlight %}

Get the same block in JSON:

{% highlight bash %}
axe-cli -testnet getblockheader \
            00000000eb0af5aec7b673975a22593dc0cc763f71ba8de26292410273437078
{% endhighlight %}

Result:

{% highlight json %}

{
  "hash": "00000000eb0af5aec7b673975a22593dc0cc763f71ba8de26292410273437078",
  "confirmations": 7,
  "height": 4635,
  "version": 536870913,
  "merkleroot": "8976fb7fcb724b336978ffd09896e5e4198c341a3701a6618de7d9e16eb91ec3",
  "time": 1507213627,
  "mediantime": 1507213022,
  "nonce": 1017819657,
  "bits": "1d011630",
  "difficulty": 0.920228600314536,
  "chainwork": "000000000000000000000000000000000000000000000000000001e06428c09a",
  "previousblockhash": "00000000b80ccaed16566e2dc2cc1a17d875781ffe88a0cf947e74d2cf9613f6",
  "nextblockhash": "000000003b1aa290db62ae7cfb4dbb67c8e1402a40ef387587f930b8ec3b45db"
}

{% endhighlight %}

*See also*

* [GetBlock][rpc getblock]: {{summary_getBlock}}
* [GetBlockHash][rpc getblockhash]: {{summary_getBlockHash}}
* [GetBlockHashes][rpc getblockhashes]: {{summary_getBlockHashes}}
* [GetBlockHeaders][rpc getblockheaders]: {{summary_getBlockHeaders}}
* [GetBestBlockHash][rpc getbestblockhash]: {{summary_getBestBlockHash}}

{% endautocrossref %}
