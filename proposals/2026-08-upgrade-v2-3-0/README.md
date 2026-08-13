# Panacea v2.3.0 Mainnet Upgrade

This proposal schedules a software upgrade of the Panacea mainnet,
`panacea-3`, to v2.3.0 at block `28,074,600`. The upgrade is estimated to
occur on August 20, 2026 at 07:00 UTC (16:00 KST).

Block times may vary, so the estimated time can shift. The upgrade will occur
at the specified block height.

## Proposal

The Panacea team proposes upgrading the mainnet to the v2.3.0 release of
Panacea Core.

- Release: https://github.com/medibloc/panacea-core/releases/tag/v2.3.0
- Source commit: `91c74f66aaeb0b2fc37282175eee400d0767e37f`
- Upgrade plan: `v2.3.0`
- Upgrade height: `28,074,600`

## What's Changed

v2.3.0 upgrades Cosmos SDK to v0.50.15, CometBFT to v0.38.23, and IBC-Go to
v8.8.0. It also adds the v2.3.0 upgrade handler and Panacea NFT module while
preserving legacy AOL and DID signing support.

Unlike a routine binary replacement, this upgrade also requires validators to
migrate `app.toml` to the SDK v0.50 format and verify that the application
database uses the supported `goleveldb` backend.

## Actions Required of Node Operators

If this proposal passes, nodes running v2.2.0 or v2.2.1 will halt at the
upgrade height. Validators must complete the preparation steps in the guide
below before that height and resume their nodes with the checksum-verified
v2.3.0 binary:

https://github.com/medibloc/panacea-mainnet/blob/master/panacea-3/v2.3.0/upgrade.md

Validators using Cosmovisor should pre-stage the binary as described in the
guide. Validators using a manual restart should keep the verified binary ready
and start it only after the current binary halts at the upgrade height.

## Upgrade Time and Coordination

The target height is `28,074,600`, currently estimated for August 20, 2026 at
07:00 UTC (16:00 KST). Monitor the block countdown for a more precise estimate:

https://www.mintscan.io/medibloc/block/28074600

If the chain does not resume normally, validators should preserve their logs
and coordinate in the official validator channel.
