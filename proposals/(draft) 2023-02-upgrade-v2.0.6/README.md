## Background
This is a draft of our SW Upgrade proposal to do a software upgrade to v2.0.6 software tag of the Panacea codebase. The purpose of sharing this draft is to gather validators feedback before we submit the proposal.

## Proposal
Panacea team would like to propose that we upgrade our chain’s ibc-go from v2 to v4.3.0 (with cosmos-sdk v0.45.12 and informalsystems/tendermint v0.34.24) and remove CosmWasm from the chain.

We believe that removing CosmWasm requires some explanation from our end whereas upgrading ibc-go is straightforward to most of you. 
(For more information on ibc-go upgrade, please refer to this link - https://github.com/cosmos/ibc-go/blob/main/RELEASES.md#stable-release-policy)

Pancaea team first adopted CosmWasm to accomodate a possible NFT usage on the chain. However, because of below three reasons, we now think that it is more reasonable for us to remove CosmWasm from the chain.
- No clear use case for CosmWasm at this point
- Hardship in removing CosmWasm once somebody starts using it; currently, nobody is using CosmWasm on Panacea yet
- Replacable through Cosmos SDK v0.46.x that now includes x/nft module later

## Upgrade features
This upgrade contains the following changes:
- Upgrade ibc-go from v2 to v4.3.0 (with cosmos-sdk v0.45.12 and informalsystems/tendermint v0.34.24)
- Remove CosmWasm

## What’s next
Once we gather enough comments and feedbacks from the validators and conclude that there is no issue in going through with the software upgrade proposal, we will generate a SW Upgrade Proposal
