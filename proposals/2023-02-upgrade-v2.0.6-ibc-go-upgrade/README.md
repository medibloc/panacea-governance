# Panacea v2.0.6 Upgrade

This is a proposal to do a software upgrade to the v2.0.6 software tag of the Panacea codebase on block height xxxxxxxx, which is estimated to occur on Day Month Date, UTC xx:xx. 
Block times have high variance, so please monitor the chain for more precise time estimates.

## Upgrade features

This upgrade contains the following changes:

- Upgrade ibc-go from v2 to v4.3.0 (with cosmos-sdk v0.45.12 and informalsystems/tendermint v0.34.24)

For details, please see the v2.0.6 release note: https://github.com/medibloc/panacea-core/releases/tag/v2.0.6


## Actions required of node operators

If this SoftwareUpgrade proposal is approved, the state machine of the `panacead` will be stopped as soon as the chain reaches to the block height xxxxxxxx.
It means that new blocks will not be produced until the `panacead` daemon is restarted with the new version.

Then, please replace the old `panacead` binary with the new one, and restart the daemon by following the guide below.
https://github.com/medibloc/panacea-mainnet/blob/master/panacea-3/v2.0.6/upgrade.md

If you are using the Cosmovisor, please build the new `panacead` binary manually and put that under the `upgrade` directory. The auto-download is not supported yet because the appropriate version of the `libwasmvm.so` must be installed manually before starting the auto-download.


## Details of Upgrade Time

The proposal targets the upgrade proposal block to be 7700000, anticipated to be on Monday October 24, UTC 06:00. Note that block times have high variance, so keep monitoring the time. See countdown here: https://www.mintscan.io/medibloc/blocks/7700000.

The upgrade is anticipated to take approx 30 minutes, during which time, there will not be any on-chain activity on the network.

In the event of an issue at upgrade time, we should coordinate via the validators channel in discord to come to a quick emergency consensus and mitigate any further issues.
