# Signaling Proposal: Upgrade the chain for introducing a min-commission-rate parameter and setting it to 3%


## Proposal

Previously, the proposal #6 "Increase minimum commission rate to 5%" was submitted but was rejected.<br>
https://www.mintscan.io/medibloc/proposals/6

This topic has been discussed for a very long time in the Cosmos ecosystem.<br>
https://forum.cosmos.network/t/proposal-are-validators-charging-0-commission-harmful-to-the-success-of-the-cosmos-hub/2505

Although proposal #6 was reasonable enough, MediBloc team also rejected it because we didn't have clear strategies and implementations for enforcing validators to increase their commission rate.

Also, the team thought that the ideal network should work without a minimum commission rate. So, instead of having the restriction, we have convinced some validators to set a reasonable commission rate. Thankfully, many validators have increased their commission rate. But, that is the inefficient and not-decentralized way. Instead, we have found that it is beneficial to have a minimum commission rate at least while the chain is in early-stage. This will improve network sustainability and make it possible for validators to compete in healthy ways without setting the commission rate to 0%.

Since then, MediBloc team has implemented a `min-commission-rate` parameter and a chain upgrade strategy for updating the commission rate of validators whose commission rate is smaller than `min-commission-rate`.

Now, MediBloc team is proposing to upgrade the chain to have the `min-commission-rate` parameter and set it to 3% to improve network sustainability.


## What the chain upgrade contains

- The `medibloc/cosmos-sdk v0.42.11-panacea` is used instead of the `comsos/cosmos-sdk v0.42.9`.
    - The `medibloc/cosmos-sdk` is a simple fork of `cosmos/cosmos-sdk` with the new `min-commission-rate` parameter in the `x/staking` module.
    - https://github.com/medibloc/cosmos-sdk/pull/27 (almost the same as the fork that Osmosis team had implemented)
- The value of `min-commission-rate` is set to 3%.
- The commission rate of validators whose current commission rate is smaller than `min-commission-rate` is changed to 3% automatically.
    - If their commission max rate is also smaller than `min-commission-rate`, it is changed to 6% (= 2 * 3%) automatically.
    - https://github.com/medibloc/panacea-core/pull/291


## How the chain upgrade will be performed

If this signaling proposal is approved, MediBloc team will submit a SoftwareUpgrade proposal for upgrading the chain from v2.0.2 to v2.0.3 which contains all changes mentioned above.

If the SoftwareUpgrade proposal is approved, the chain upgrade should be performed at the promised time by all validators and full node operators. All upgrade processes related to `min-commission-rate` are performed by the chain upgrade handler automatically.


## What's next?

MediBloc team is working on designing/implementing the Data Market Protocol on Panacea, so that individual data owners can provide/sell their data to individuals/companies who are willing to pay cryptocurrency for it.
That would be the core value of the patient-centric healthcare data ecosystem that MediBloc wants to contribute to building.

It would be great if we can make the network more sustainable and healthier before releasing the data market protocol on Panacea, so that the protocol can be run securely.

The revised Panacea roadmap can be found at https://medibloc.gitbook.io/panacea-core/overview/roadmap.