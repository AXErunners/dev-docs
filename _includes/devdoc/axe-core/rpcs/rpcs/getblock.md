{% comment %}
This file is licensed under the MIT License (MIT) available on
http://opensource.org/licenses/MIT.
{% endcomment %}
{% assign filename="_includes/devdoc/axe-core/rpcs/rpcs/getblock.md" %}

##### GetBlock
{% include helpers/subhead-links.md %}

{% assign summary_getBlock="gets a block with a particular header hash from the local block database either as a JSON object or as a serialized block." %}

{% autocrossref %}

The `getblock` RPC {{summary_getBlock}}

*Parameter #1---block hash*

{% itemplate ntpd1 %}
- n: "Block Hash"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The hash of the header of the block to get, encoded as hex in RPC byte order"

{% enditemplate %}

*Parameter #2---whether to get JSON or hex output*

{% itemplate ntpd1 %}
- n: "Verbosity"
  t: "number (int)"
  p: "Optional<br>(0 or 1)"
  d: "Set to one of the following verbosity levels:<br>• `0` - Get the block in serialized block format;<br>• `1` - Get the decoded block as a JSON object (default)<br>• `2` - Get the decoded block as a JSON object with transaction details"

{% enditemplate %}

*Result (if verbosity was `0`)---a serialized block*

{% itemplate ntpd1 %}
- n: "`result`"
  t: "string (hex)/null"
  p: "Required<br>(exactly 1)"
  d: "The requested block as a serialized block, encoded as hex, or JSON `null` if an error occurred"

{% enditemplate %}

*Result (if verbosity was `1` or omitted)---a JSON block with transaction hashes*

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

- n: "→<br>`size`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of this block in serialized block format, counted in bytes"

- n: "→<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of this block on its block chain"

- n: "→<br>`version`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "This block's version number.  See [block version numbers][section block versions]"

- n: "→<br>`versionHex`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "_Added in Bitcoin Core 0.13.0_<br><br>The block version formatted in hexadecimal"

- n: "→<br>`merkleroot`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The merkle root for this block, encoded as hex in RPC byte order"

- n: "→<br>`tx`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array containing the TXIDs of all transactions in this block.  The transactions appear in the array in the same order they appear in the serialized block"

- n: "→ →<br>TXID"
  t: "string (hex)"
  p: "Required<br>(1 or more)"
  d: "The TXID of a transaction in this block, encoded as hex in RPC byte order"

- n: "→<br>`time`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The value of the *time* field in the block header, indicating approximately when the block was created"

- n: "→<br>`mediantime`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "*Added in Bitcoin Core 0.12.0*<br><br>The median block time in Unix epoch time"  

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

*Result (if verbosity was `2`---a JSON block with full transaction details*

{% assign DEPTH="→" %}
{% include helpers/vars.md %}

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

- n: "→<br>`size`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The size of this block in serialized block format, counted in bytes"

- n: "→<br>`height`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The height of this block on its block chain"

- n: "→<br>`version`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "This block's version number.  See [block version numbers][section block versions]"

- n: "→<br>`versionHex`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "_Added in Bitcoin Core 0.13.0_<br><br>The block version formatted in hexadecimal"

- n: "→<br>`merkleroot`"
  t: "string (hex)"
  p: "Required<br>(exactly 1)"
  d: "The merkle root for this block, encoded as hex in RPC byte order"

- n: "→<br>`tx`"
  t: "array"
  p: "Required<br>(exactly 1)"
  d: "An array containing the TXIDs of all transactions in this block.  The transactions appear in the array in the same order they appear in the serialized block"

{{INCLUDE_DECODE_RAW_TRANSACTION}}

- n: "→<br>`time`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "The value of the *time* field in the block header, indicating approximately when the block was created"

- n: "→<br>`mediantime`"
  t: "number (int)"
  p: "Required<br>(exactly 1)"
  d: "*Added in Bitcoin Core 0.12.0*<br><br>The median block time in Unix epoch time"  

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

*Example from Axe Core 0.13.0*

Get a block in raw hex:

{% highlight bash %}
axe-cli -testnet getblock \
            00000012e877c56af0b33d79aae888b5cb40b47809b4bee764e8fea7a9033994 \
            0
{% endhighlight %}

Result (wrapped):

{% highlight text %}
01000020d2fb795188566bd52deaa8e62de6f59c2833e842f9f6a48cea026689\
04000000c7274c45e043e5953f2d62a1938818b513d8fd4c9f99c2c1541d1449\
7f368602c2d8175c417b4d1d0007a96501010000000100000000000000000000\
00000000000000000000000000000000000000000000ffffffff1202a91a0e2f\
5032506f6f6c2d74444153482fffffffff0404e65a96010000001976a9144f79\
c383bc5d3e9d4d81b98f87337cedfa78953688ac40c3609a010000001976a914\
f627e64c0453f74d879f6e6a37709189af0298da88ac3cdd0504000000001976\
a914badadfdebaa6d015a0299f23fbc1fcbdd72ba96f88ac0000000000000000\
2a6a285fb560df18bc5145faa0860841df9daf30dc544c7b0cdb52ff28c06fa3\
b33924000000000100000000000000
{% endhighlight %}

Get the same block in JSON:

{% highlight bash %}
axe-cli -testnet getblock \
            00000012e877c56af0b33d79aae888b5cb40b47809b4bee764e8fea7a9033994
{% endhighlight %}

Result:

{% highlight json %}
{
  "hash": "00000012e877c56af0b33d79aae888b5cb40b47809b4bee764e8fea7a9033994",
  "confirmations": 1,
  "size": 303,
  "height": 6825,
  "version": 536870913,
  "versionHex": "20000001",
  "merkleroot": "0286367f49141d54c1c2999f4cfdd813b5188893a1622d3f95e543e0454c27c7",
  "tx": [
    "0286367f49141d54c1c2999f4cfdd813b5188893a1622d3f95e543e0454c27c7"
  ],
  "time": 1545066690,
  "mediantime": 1545065992,
  "nonce": 1705576192,
  "bits": "1d4d7b41",
  "difficulty": 0.01290611629979371,
  "chainwork": "00000000000000000000000000000000000000000000000000000647104aa574",
  "previousblockhash": "00000004896602ea8ca4f6f942e833289cf5e62de6a8ea2dd56b56885179fbd2"
}
{% endhighlight %}

Get the same block in JSON with transaction details:

{% highlight bash %}
axe-cli -testnet getblock \
            00000012e877c56af0b33d79aae888b5cb40b47809b4bee764e8fea7a9033994 2
{% endhighlight %}

Result:

{% highlight json %}
{
  "hash": "00000012e877c56af0b33d79aae888b5cb40b47809b4bee764e8fea7a9033994",
  "confirmations": 1,
  "size": 303,
  "height": 6825,
  "version": 536870913,
  "versionHex": "20000001",
  "merkleroot": "0286367f49141d54c1c2999f4cfdd813b5188893a1622d3f95e543e0454c27c7",
  "tx": [
    {
      "txid": "0286367f49141d54c1c2999f4cfdd813b5188893a1622d3f95e543e0454c27c7",
      "size": 222,
      "version": 1,
      "type": 0,
      "locktime": 0,
      "vin": [
        {
          "coinbase": "02a91a0e2f5032506f6f6c2d74444153482f",
          "sequence": 4294967295
        }
      ],
      "vout": [
        {
          "value": 68.17506820,
          "valueSat": 6817506820,
          "n": 0,
          "scriptPubKey": {
            "asm": "OP_DUP OP_HASH160 4f79c383bc5d3e9d4d81b98f87337cedfa789536 OP_EQUALVERIFY OP_CHECKSIG",
            "hex": "76a9144f79c383bc5d3e9d4d81b98f87337cedfa78953688ac",
            "reqSigs": 1,
            "type": "pubkeyhash",
            "addresses": [
              "yTZg6eePKxbJZyoaC93bVrTUq5vjhFrbst"
            ]
          }
        },
        {
          "value": 68.85000000,
          "valueSat": 6885000000,
          "n": 1,
          "scriptPubKey": {
            "asm": "OP_DUP OP_HASH160 f627e64c0453f74d879f6e6a37709189af0298da OP_EQUALVERIFY OP_CHECKSIG",
            "hex": "76a914f627e64c0453f74d879f6e6a37709189af0298da88ac",
            "reqSigs": 1,
            "type": "pubkeyhash",
            "addresses": [
              "yikzsfaaQ2eZ1RpVUpf1EvedzgGdJD17dC"
            ]
          }
        },
        {
          "value": 0.67493180,
          "valueSat": 67493180,
          "n": 2,
          "scriptPubKey": {
            "asm": "OP_DUP OP_HASH160 badadfdebaa6d015a0299f23fbc1fcbdd72ba96f OP_EQUALVERIFY OP_CHECKSIG",
            "hex": "76a914badadfdebaa6d015a0299f23fbc1fcbdd72ba96f88ac",
            "reqSigs": 1,
            "type": "pubkeyhash",
            "addresses": [
              "ydMSjYqwv4xTossPJ1xndTxwS1Hho9DmuM"
            ]
          }
        },
        {
          "value": 0.00000000,
          "valueSat": 0,
          "n": 3,
          "scriptPubKey": {
            "asm": "OP_RETURN 5fb560df18bc5145faa0860841df9daf30dc544c7b0cdb52ff28c06fa3b339240000000001000000",
            "hex": "6a285fb560df18bc5145faa0860841df9daf30dc544c7b0cdb52ff28c06fa3b339240000000001000000",
            "type": "nulldata"
          }
        }
      ],
      "instantlock": false
    }
  ],
  "time": 1545066690,
  "mediantime": 1545065992,
  "nonce": 1705576192,
  "bits": "1d4d7b41",
  "difficulty": 0.01290611629979371,
  "chainwork": "00000000000000000000000000000000000000000000000000000647104aa574",
  "previousblockhash": "00000004896602ea8ca4f6f942e833289cf5e62de6a8ea2dd56b56885179fbd2"
}
{% endhighlight %}

*See also*

* [GetBlockHash][rpc getblockhash]: {{summary_getBlockHash}}
* [GetBestBlockHash][rpc getbestblockhash]: {{summary_getBestBlockHash}}

{% endautocrossref %}
