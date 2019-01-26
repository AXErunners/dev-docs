{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getblockheaders.md" %}

##### GetBlockHeaders
{% include helpers/subhead-links.md %}

{% assign summary_getBlockHeaders="returns an array of items with information about the requested number of blockheaders starting from the requested hash." %}

{% autocrossref %}

*Added in Axe Core 0.12.1*

The `getblockheaders` RPC {{summary_getBlockHeaders}}

*Parameter #1---header hash*

{% itemplate ntpd1 %}
- n: "Header Hash"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of the block header to get, encoded as hex in RPC byte order"

{% enditemplate %}

*Parameter #2---number of headers to return*

{% itemplate ntpd1 %}
- n: "Count"
  t: "number"
  p: "Optional<br>(exactly 1)"
  d: "The number of block headers to get"

{% enditemplate %}

*Parameter #3---JSON or hex output*

{% itemplate ntpd1 %}
- n: "Verbose"
  t: "bool"
  p: "Optional<br>(0 or 1)"
  d: "Set to `false` to get the block headers in serialized block format; set to `true` (the default) to get the decoded block headers as a JSON object"

{% enditemplate %}

*Result (if format was `false`)---a serialized block header*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "The requested block header(s) as a serialized block"

- n: "→<br>`header`"
  t: "string (hex)"
  p: "Required<br>(1 or more)"
  d: "The block header encoded as hex in RPC byte order"

{% enditemplate %}

*Result (if format was `true` or omitted)---a JSON block header*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array of objects each containing a block header, or JSON `null` if an error occurred"

- n: "→<br>Block Header"
  t: "object/null"
  p: "Required<br>(exactly 1)"
  d: "An object containing a block header"

- n: "→ →<br>`hash`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of this block's block header encoded as hex in RPC byte order.  This is the same as the hash provided in parameter #1"

- n: "→ →<br>`confirmations`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The number of confirmations the transactions in this block have, starting at 1 when this block is at the tip of the best block chain.  This score will be -1 if the the block is not part of the best block chain"

- n: "→ →<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of this block on its block chain"

- n: "→ →<br>`version`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "This block's version number.  See [block version numbers][section block versions]"

- n: "→ →<br>`merkleroot`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The merkle root for this block, encoded as hex in RPC byte order"

- n: "→ →<br>`time`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The time of the block"

- n: "→ →<br>`mediantime`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The computed median time of the previous 11 blocks.  Used for validating transaction locktime under BIP113"

- n: "→ →<br>`nonce`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The nonce which was successful at turning this particular block into one that could be added to the best block chain"

- n: "→ →<br>`bits`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The value of the *nBits* field in the block header, indicating the target threshold this block's header had to pass"

- n: "→ →<br>`difficulty`"
  t: "number (real)"
  p: "Required<br>(exactly 1)"
  d: "The estimated amount of work done to find this block relative to the estimated amount of work done to find block 0"

- n: "→<br>`chainwork`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The estimated number of block header hashes miners had to check from the genesis block to this block, encoded as big-endian hex"

- n: "→ →<br>`previousblockhash`"
  t: "string (hex)"
  p: "Optional<br>(0 or 1)"
  d: "The hash of the header of the previous block, encoded as hex in RPC byte order.  Not returned for genesis block"

- n: "→ →<br>`nextblockhash`"
  t: "string (hex)"
  p: "Optional<br>(0 or 1)"
  d: "The hash of the next block on the best block chain, if known, encoded as hex in RPC byte order"

{% enditemplate %}

*Example from Axe Core 0.12.2*

Get two block headers in raw hex:

{% highlight bash %}
axe-cli -testnet getblockheaders \
            0000000010a16c6fbc6bd5cdc238c2beabcda334e97fde1500d59be4e6fc4b89 \
            2 false
{% endhighlight %}

Result (wrapped):

{% highlight text %}
[
  "010000207216dc7b7c898ba3fc0b39d1fd16756b97b1e07e3eb5c64d1510a64b0000000\
   0bb64e58a0be4276bf3e9c366bba960953ef9e47a8f62342476be56a5dfa7a2670276db\
   59eae1001d0735577e",
  "01000020894bfce6e49bd50015de7fe934a3cdabbec238c2cdd56bbc6f6ca1100000000\
   0edb2a018d535de70b0622a3303dc329dcb315e7507d074c0c641501c58d88aa08576db\
   59c5db001d03cf8986"
]
{% endhighlight %}

Get the same two block headers in JSON:

{% highlight bash %}
axe-cli -testnet getblockheader \
            00000000eb0af5aec7b673975a22593dc0cc763f71ba8de26292410273437078 \
            2 true
{% endhighlight %}

Result:

{% highlight json %}
[
  {
    "hash": "0000000010a16c6fbc6bd5cdc238c2beabcda334e97fde1500d59be4e6fc4b89",
    "confirmations": 20,
    "height": 6802,
    "version": 536870913,
    "merkleroot": "67a2a7dfa556be762434628f7ae4f93e9560a9bb66c3e9f36b27e40b8ae564bb",
    "time": 1507554818,
    "mediantime": 1507554058,
    "nonce": 2119644423,
    "bits": "1d00e1ea",
    "difficulty": 1.1331569664903,
    "chainwork": "0000000000000000000000000000000000000000000000000000092c7b511197",
    "previousblockhash": "000000004ba610154dc6b53e7ee0b1976b7516fdd1390bfca38b897c7bdc1672",
    "nextblockhash": "000000009910885e811230c403e55aac6547d6df04ee671b2e8348524f73cab8"
  },
  {
    "hash": "000000009910885e811230c403e55aac6547d6df04ee671b2e8348524f73cab8",
    "confirmations": 19,
    "height": 6803,
    "version": 536870913,
    "merkleroot": "a08ad8581c5041c6c074d007755e31cb9d32dc03332a62b070de35d518a0b2ed",
    "time": 1507554949,
    "mediantime": 1507554181,
    "nonce": 2257178371,
    "bits": "1d00dbc5",
    "difficulty": 1.164838875953147,
    "chainwork": "0000000000000000000000000000000000000000000000000000092da5851d38",
    "previousblockhash": "0000000010a16c6fbc6bd5cdc238c2beabcda334e97fde1500d59be4e6fc4b89",
    "nextblockhash": "000000004bbb3828db1c4d4491760336cec215087819ab656336f30d4095e3d2"
  }
]
{% endhighlight %}

*See also*

* [GetBlock][rpc getblock]: {{summary_getBlock}}
* [GetBlockHash][rpc getblockhash]: {{summary_getBlockHash}}
* [GetBlockHashes][rpc getblockhashes]: {{summary_getBlockHashes}}
* [GetBlockHeader][rpc getblockheader]: {{summary_getBlockHeader}}
* [GetBestBlockHash][rpc getbestblockhash]: {{summary_getBestBlockHash}}

{% endautocrossref %}
