# Panacea v2.0.6 Upgrade
This is a proposal to do a software upgrade to the v2.0.6 software tag of the Panacea codebase on block height 9692000, which is estimated to occur on Wednesday March 08 2023 05:36:00 UTC 

Block times have high variance, so please monitor the chain for more precise time estimates.

## Proposal
Panacea team would like to propose that we upgrade our chain’s ibc-go from v2 to v4.3.0 (with cosmos-sdk v0.45.12 and informalsystems/tendermint v0.34.24) and remove CosmWasm from the chain.

We believe that removing CosmWasm requires some explanation from our end whereas upgrading ibc-go is straightforward to most of you. 
(For more information on ibc-go upgrade, please refer to this link - https://github.com/cosmos/ibc-go/blob/main/RELEASES.md#stable-release-policy)

Pancaea team first adopted CosmWasm to accomodate a possible NFT usage on the chain. However, because of below two reasons, we now think that it is more reasonable for us to remove CosmWasm from the chain.
- No clear use case for CosmWasm at this point
  - We also expect hardship in removing CosmWasm once somebody starts using it; currently, nobody is using CosmWasm on Panacea yet
- Replacable through Cosmos SDK v0.46.x that now includes x/nft module later

## Upgrade features
This upgrade contains the following changes:
- [\#635](https://github.com/medibloc/panacea-core/pull/635) Upgrade ibc-go from v2 to v4.3.0 (with cosmos-sdk v0.45.12 and informalsystems/tendermint v0.34.24)
- [\#640](https://github.com/medibloc/panacea-core/pull/640) Remove CosmWasm

## Actions required of node operators

If this SoftwareUpgrade proposal is approved, the state machine of the `panacead` will be stopped as soon as the chain reaches to the block height 9692000.
It means that new blocks will not be produced until the `panacead` daemon is restarted with the new version.

Then, please replace the old `panacead` binary with the new one, and restart the daemon by following the guide below.
https://github.com/medibloc/panacea-mainnet/blob/master/panacea-3/v2.0.6/upgrade.md

If you are using the Cosmovisor, please build the new `panacead` binary manually and put that under the `upgrade` directory. The auto-download is not supported yet because the appropriate version of the `libwasmvm.so` must be installed manually before starting the auto-download.


## Details of Upgrade Time

The proposal targets the upgrade proposal block to be 9692000, estimated to occur on Wednesday March 08 2023 UTC 05:36:00. Note that block times have high variance, so keep monitoring the time. See countdown here: https://www.mintscan.io/medibloc/blocks/9692000.

The upgrade is anticipated to take approx 30 minutes, during which time, there will not be any on-chain activity on the network.

In the event of an issue at upgrade time, we should coordinate via the validators channel in discord to come to a quick emergency consensus and mitigate any further issues.
