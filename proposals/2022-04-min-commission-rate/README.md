# Signaling Proposal: Upgrade the chain for introducing a min-commission-rate parameter and setting it to 3%


## Proposal

The topic of min-commission-rate has been discussed for a very long time in the Cosmos ecosystem.<br>
https://forum.cosmos.network/t/proposal-are-validators-charging-0-commission-harmful-to-the-success-of-the-cosmos-hub/2505

Even in Panacea, the proposal to increase minimum commission rate to 5% (proposal #6) was submitted previously.<br>
https://www.mintscan.io/medibloc/proposals/6

Although proposal #6 was reasonable enough, MediBloc team rejected the proposal because the team has yet to develop clear strategies to enforce the validators with low commission rate to increase their commission rate.

Also, the team thought that the ideal network should work without a restriction on commission rate. So, instead of implementing the restriction, the team has convinced those validators with 0% commission rate to raise its commission rate to a reasonable rate. Thankfully, many validators have cooperated with us and raised their commission rates. But, after doing so, we realized that our approach is the inefficient and non-decentralized way. Hence, we have found it beneficial to have a minimum commission rate at least while the chain is in the early-stage. We believe this will improve the network sustainability and make it possible for validators to compete in healthy ways without setting the commission rate to 0%.

Since then, MediBloc team has implemented a 'min-commission-rate' parameter and a chain upgrade strategy for updating the commission rate of validators whose commission rate is smaller than 'min-commission-rate'.

Now, MediBloc team is proposing to upgrade the chain to contain the 'min-commission-rate' parameter and set it to 3% to improve network sustainability.


## What the chain upgrade contains

- The 'medibloc/cosmos-sdk v0.42.11-panacea.1' is used instead of the 'comsos/cosmos-sdk v0.42.9'.
    - The 'medibloc/cosmos-sdk' is a simple fork of 'cosmos/cosmos-sdk' with the new 'min-commission-rate' parameter in the 'x/staking' module.
    - https://github.com/medibloc/cosmos-sdk/releases/tag/v0.42.11-panacea.1 (almost the same as the fork that Osmosis team had implemented)
- The value of 'min-commission-rate' is set to 3%.
    - Nobody can execute 'create-validator' and 'edit-validator' transactions with a commission rate smaller than 'min-commission-rate'.
- The commission rate of validators whose current commission rate is smaller than 'min-commission-rate' is changed to 3% automatically.
    - If their commission max rate is also smaller than 'min-commission-rate', it is changed to 6% (= 2 * 3%) automatically.
    - https://github.com/medibloc/panacea-core/releases/tag/v2.0.3


## How the chain upgrade will be performed

If this signaling proposal is approved, MediBloc team will submit a SoftwareUpgrade proposal for upgrading the chain from v2.0.2 to v2.0.3 which contains all the changes mentioned above.

If and when the SoftwareUpgrade proposal is approved, the chain upgrade should be performed at the promised time by all validators and full node operators. All upgrade processes related to 'min-commission-rate' will be performed by the chain upgrade handler automatically.


## What's next

MediBloc team is working on designing/implementing the Data Market Protocol on Panacea, so that individual data owners can provide/sell their data to individuals/companies who are willing to pay cryptocurrency for it.
This protocol will be a crucial piece to the patient-centric healthcare data ecosystem that MediBloc ultimately wants to build for the society.

It would be great if we can make the network more sustainable and healthier before releasing the data market protocol on Panacea, so that the protocol runs securely on Panacea.

The revised Panacea roadmap can be found at https://medibloc.gitbook.io/panacea-core/overview/roadmap.