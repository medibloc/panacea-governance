# panacea-governance


## TextProposal

`TextProposal All` the proposals that do not involve a modification of the source code go under this type. For example, an opinion poll would use a proposal of type TextProposal.

```shell
panacead tx gov submit-proposal --proposal "path/to/proposal.json" --from {key or address} --chain-id {chain_id} --node https://rpc.gopanacea.org:443  
```

proposal.json
```json
{
  "title": "Text Proposal",
  "description": "My awesome proposal",
  "type": "Text",
  "deposit": "10000000000umed"
}
```

## CommunityPoolSpendProposal
`CommunityPoolSpendProposal` details a proposal for use of community funds, together with how many coins are proposed to be spent, and to which recipient account.

```shell
panacead tx gov submit-proposal community-pool-spend "path/to/proposal.json" --from {key or address} --chain-id {chain_id} --node https://rpc.gopanacea.org:443
```

proposal.json
```json
{
  "title": "Community Pool Spend",
  "description": "Pay me some MEDs!",
  "recipient": "panacea1a6yrdxnchps05xd4jmd5dgunkcx4tgkgz4zwm3",
  "amount": "100000000umed",
  "deposit": "500000000umed"
}
```

## ParameterChangeProposal
`ParameterChangeProposal` defines a proposal to change one or more parameters. If accepted, the requested parameter change is updated automatically by the proposal handler upon conclusion of the voting period.

```shell
panacead tx gov submit-proposal param-change "path/to/proposal.json" --from {key or address} --chain-id {chain_id} --node https://rpc.gopanacea.org:443
```

proposal.json
```json
{
  "title": "Activate the community pool and Lower the minimum proposal deposit",
  "description": "description",
  "changes": [
    {
      "subspace": "distribution",
      "key": "communitytax",
      "value": "0.020000000000000000"
    },
    {
      "subspace": "gov",
      "key": "depositparams",
      "value": {
        "min_deposit": [
          {
            "denom": "umed",
            "amount": "10000000000"
          }
        ]
      }
    }
  ],
  "deposit": "100000000000umed"
}
```

## SoftwareUpgradeProposal
If this software upgrade proposal passes, it will be upgraded to the version registered in the proposal.
Once the proposal is passed, all nodes are interrupted at the specified height or time.
The node operator changes the chain to the version specified in the proposal and start it.

## CancelSoftwareUpgradeProposal
`CancelSoftwareUpgradeProposal` is a gov Content type for cancelling a software upgrade.

