#!/bin/bash

set -euxo pipefail

panacead tx gov submit-proposal software-upgrade v2.0.7 \
        --upgrade-height 10196856 \
        --node https://rpc.gopanacea.org:443 \
        --chain-id panacea-3 \
        --from panacea1ewugvs354xput6xydl5cd5tvkzcuymkejekwk3 \
        --gas auto \
        --gas-prices 5umed \
        --gas-adjustment 1.3 \
        -b block \
        --deposit "10000000000umed" \
        --title "Panacea v2.0.7 Upgrade" \
        --description "# Panacea v2.0.7 Upgrade

This is a proposal to do a software upgrade to the v2.0.7 software tag of the Panacea codebase on block height 10196856, which is estimated to occur on Tuesday April 11 2023, UTC 05:30

Block times have high variance, so please monitor the chain for more precise time estimates.


## Proposal

Panacea team would like to propose that we upgrade our chain to v2.0.7 that enables a governance proposal type for updating IBC client.

- [\#659](https://github.com/medibloc/panacea-core/pull/659) feat: add missing ibc route and ibc client settings


## Actions required of node operators

If this SoftwareUpgrade proposal is approved, the state machine of the 'panacead' will be stopped as soon as the chain reaches to the block height 10196856.
It means that new blocks will not be produced until the 'panacead' daemon is restarted with the new version.

Then, please replace the old 'panacead' binary with the new one, and restart the daemon by following the guide below.
https://github.com/medibloc/panacea-mainnet/blob/master/panacea-3/v2.0.7/upgrade.md

If you are using the Cosmovisor, please build the new 'panacead' binary manually and put that under the 'upgrade' directory. The auto-download is not supported yet as per the following guide from cosmovisor.(https://docs.cosmos.network/main/tooling/cosmovisor#auto-download).


## Details of Upgrade Time

The proposal targets the upgrade proposal block to be 10196856, estimated to occur on Tuesday April 11 2023, UTC 05:30. Note that block times have high variance, so keep monitoring the time. See countdown here: https://www.mintscan.io/medibloc/blocks/10196856.

The upgrade is anticipated to take approx 30 minutes, during which time, there will not be any on-chain activity on the network.

In the event of an issue at upgrade time, we should coordinate via the validators channel in discord to come to a quick emergency consensus and mitigate any further issues."
