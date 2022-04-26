# Upgrade the chain to v2.0.3 for introducing a min-commission-rate parameter and setting it to 3%


### Proposal

This proposal is for upgrading the Panacea mainnet `panacea-3` from v2.0.2 to v2.0.3 to introduce a min-commission-rate parameter and setting it to 3%.

A signaling proposal for this had been already approved: https://www.mintscan.io/medibloc/proposals/2.
For more details about the motivation of introducing the min-commission-rate parameter, please see the signaling proposal.


### What the chain upgrade contains

Please see a release note: https://github.com/medibloc/panacea-core/releases/tag/v2.0.3


### Required actions by node operators

If this SoftwareUpgrade proposal is approved, the state machine of the `panacead` will be stopped as soon as a proposed block time '2022-05-11 07:00:00 UTC' is reached.
It means that new blocks will not be produced until the `panacead` daemon is restarted with the new version.

Then, please replace the old `panacead` binary with the new one and restart the daemon by the following guide.
https://github.com/medibloc/panacea-mainnet/blob/master/panacea-3/v2.0.3/upgrade.md

If you are using the 'cosmovisor', please build the new 'panacead' binary manually and put that under the 'upgrade' directory. The auto-download is not supported yet because the appropriate version of the 'libwasmvm.so' must be installed as well.
