# Panacea v2.0.5 Upgrade

This is a proposal to do a software upgrade to the v2.0.5 software tag of the Panacea codebase on block height 7,695,777, which is estimated to occur on Monday October 24, UTC 04:00. Block times have high variance, so please monitor the chain for more precise time estimates.


## Upgrade features

This upgrade contains the following changes:

- Upgrades Cosmos SDK from v0.42.11 to v0.45.9 which contains many new features, bug fixes, and especially a IBC security fix: https://forum.cosmos.network/t/ibc-security-advisory-dragonberry/7702.
- Removes the `x/token` module.


## Actions required by node operators

If this SoftwareUpgrade proposal is approved, the state machine of the `panacead` will be stopped as soon as the chain reaches at the block height 7,695,777. It means that new blocks will not be produced until the `panacead` daemon is restarted with the new version.

Then, please replace the old `panacead` binary with the new one, and restart the daemon by following the guide below.
https://github.com/medibloc/panacea-mainnet/blob/master/panacea-3/v2.0.5/upgrade.md

If you are using the 'cosmovisor', please build the new 'panacead' binary manually and put that under the 'upgrade' directory. The auto-download is not supported yet because the appropriate version of the 'libwasmvm.so' must be installed manually before starting the auto-download.