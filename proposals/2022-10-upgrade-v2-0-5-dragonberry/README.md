# Panacea v2.0.5 Upgrade

This proposal is for upgrading the Panacea mainnet `panacea-3` from v2.0.3 to v2.0.5.

## Upgrade features

This upgrade contains the following changes:

- Upgrades Cosmos SDK from v0.42.11 to v0.45.9 which contains many new features, bug fixes, and especially a IBC security fix: https://forum.cosmos.network/t/ibc-security-advisory-dragonberry/7702.
- Removes the `x/token` module.

For details, please see the v2.0.5 release note: https://github.com/medibloc/panacea-core/releases/tag/v2.0.5


## Actions required by node operators

If this SoftwareUpgrade proposal is approved, the state machine of the `panacead` will be stopped as soon as a proposed block time '2022-10-24 04:00:00 UTC' is reached.
It means that new blocks will not be produced until the `panacead` daemon is restarted with the new version.

Then, please replace the old `panacead` binary with the new one, and restart the daemon by following the guide below.
https://github.com/medibloc/panacea-mainnet/blob/master/panacea-3/v2.0.5/upgrade.md

If you are using the 'cosmovisor', please build the new 'panacead' binary manually and put that under the 'upgrade' directory. The auto-download is not supported yet because the appropriate version of the 'libwasmvm.so' must be installed manually before starting the auto-download.
