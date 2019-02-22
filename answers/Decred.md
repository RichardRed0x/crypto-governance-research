# Decred Governance

## Blockchain Governance

Decred's blockchain mainnet [launched](https://explorer.dcrdata.org/block/298e5cc3d985bfe7f81dc135f360abe089edd4396b86d2de66b0cef42b21d980) on February 8th 2016.

The consensus mechanism involves two factors: Proof of Work and Proof of Stake.

[Proof of Work](https://docs.decred.org/mining/proof-of-work/) miners compete to find the solution to an arbitrary problem that can only be found by guessing (hashing). Decred uses the [Blake-256 Hash Function](https://docs.decred.org/research/blake-256-hash-function/). When a PoW miner finds a valid solution they create a block and broadcast it to the network.

Each Decred block requires approval from [Proof of Stake](https://docs.decred.org/proof-of-stake/proof-of-stake/) voters to be recognized as a valid block that can be built on. To participate in Proof of Stake, holders of DCR time-lock their coins to [buy tickets](https://docs.decred.org/proof-of-stake/how-to-stake/). The system is configured to target a live ticket pool size of 40,960 tickets, the ticket price goes up/down depending on whether there are too many/few live tickets. In each block, five tickets from the pool are randomly selected to vote. These tickets vote to approve the regular transaction tree of the previous block, if a majority of tickets disprove the previous block then the regular transactions (including PoW miner reward) are invalidated. At least three votes must be included for the block to be considered valid. 

Decred's block reward is divided between PoW miners (60%), PoS voters (30%) and a Treasury fund (10%). 8% of the total supply was [pre-mined](https://docs.decred.org/faq/general/#3-how-was-the-decred-premine-distributed), with 4% being paid to the founders to compensate them for bring-up costs (at a rate of $0.49 per DCR) , and 4% being airdropped to people who signed up and were verified as unique humans (2,972 of which received 282.64 DCR each). 

The supply of Decred is [finite](https://docs.decred.org/governance/decred-constitution/), with a maximum of 21 million DCR to be created. The block reward reduces every 21.33 days (6,144 blocks) by a factor of 100/101. As of February 16th 2019 (block 319204), 44.4% of the maximum supply had been minted.

### Where does the governance happen?

Two aspects of Decred's [governance](https://docs.decred.org/governance/introduction-to-decred-governance/) happen on-chain.

 "[Block voting](https://docs.decred.org/proof-of-stake/proof-of-stake/)" refers to the role that tickets play in approving the work of PoW miners, in each block 5 tickets are called to vote and a majority must vote to approve the regular transaction tree of the previous block (the set of transactions the miner decided to include), otherwise it is invalidated, the miner's reward is stripped and other transactions returned to the mempool. You can see how tickets voted in a block under the Votes section for a block on beta.dcrdata.org ([example](https://beta.dcrdata.org/block/319764)).

"[Consensus voting](https://docs.decred.org/governance/consensus-rule-voting/consensus-rules-voting/)" refers to votes to change the consensus rules of the network. The voting process begins when at least 95% of PoW miners and 75% of PoS voters have upgraded their software to a new version with latent changes to the rules. Once these criteria are met, a voting period of 8,064 blocks (~4 weeks) begins, to decide whether the latent rule changes should be activated. For a rule change proposal to be approved, at least 75% of the tickets that vote must vote Yes. If this requirement is met, and a quorum of 10% tickets voting Yes or No is achieved, then the rule change will be activated 8,064 blocks (~4 weeks) later. You can see information about past and current consensus rule change votes on this [page](https://voting.decred.org/). 

In addition, governance of the project's Treasury and steering happens off-chain, formally through the [Politeia](https://docs.decred.org/governance/politeia/politeia/) [platform](https://proposals.decred.org/) and informally through a range of other social channels.

Politeia is a platform which facilitates the submission and discussion of Decred governance proposals, it is build to enable accountable censorship whereby the submitter of a proposal receives a censorship token which they can use to demonstrate that a certain proposal was submitted and censored. Politeia proposals are approved or rejected by ticket voting.

Proposals submitted to Politeia are initially screened by admins then published. Once published, the proposal is open for discussion and can be edited (revisions tracked) by the proposal owner in response to community feedback. When the proposal owner thinks the time is right, they authorize the start of voting. Admins then decide when voting begins for a specific proposal - they typically try to have a few votes occurring simultaneously, in recognition of the fact that voting requires stakeholders to access their wallet, which has operational security implications. Politeia proposal voting lasts for a default duration of one week (2,016 blocks), and proposals must achieve at least 60% approval from voting tickets to pass (with a quorum requirement that at least 20% of all live tickets vote Yes/No).

Discussions about the project's direction, and specific proposals, happen in other social spaces too. This [reddit post](https://www.reddit.com/r/decred/comments/api7e7/decreds_community_spaces_a_crude_analogy/) has a perspective on how these other channels fit into Decred's governance. 





## Funding

What is the reference node implementation?

https://github.com/decred/dcrd

Any other full node implementations?

No



### For the reference node implementation

#### How is development funded?

Decred development is funded by a Treasury which receives 10% of the block reward. Currently, Decred Holding Group LLC controls the treasury [wallet](https://explorer.dcrdata.org/address/Dcur2mcGjmENx4DhNqDctW5wJCVyT3Qeqkx), but the plan is to transition to using a smart contract that is connected to a contractor management system ([in development](https://github.com/decred/contractor-mgmt)).

Work is performed by contractors, both corporate and individual. Contractors have considerable autonomy, individually and collectively. 

Stakeholders (holders with [PoS tickets](https://docs.decred.org/proof-of-stake/proof-of-stake/)) vote to direct the spending of Treasury funds through [Politeia](https://proposals.decred.org/). 



##### How much from each type of source?

100% Block reward



**What else do the entities which develop or funds the reference node produce?** 

Decred's contractor collective (funded by the Treasury) develops and maintains a variety of software, and maintains several key resources. 

- [dcrd](https://github.com/decred/dcrd) and [dcrwallet](https://github.com/decred/dcrwallet) - Decred daemons
- [decrediton](https://github.com/decred/decrediton) - GUI wallet
- [politeia](https://github.com/decred/politeia) and [politeiagui](https://github.com/decred/politeiagui) - Politeia proposals site
- [dcrdata](https://github.com/decred/dcrdata) - block explorer
- [dcrweb](https://github.com/decred/dcrweb) - [Decred.org](https://decred.org/)
- [Atomic swap tools](https://github.com/decred/atomicswap/)
- [decred/dcrdocs](https://github.com/decred/dcrdocs) - main documentation site at [docs.decred.org](https://github.com/RichardRed0x/decred-on-github/blob/master/docs.decred.org). 



**What else do the entities which develop or fund the reference node do? (not software)**

Marketing - mostly funds attendance at events, until relatively recently when Ditto were hired through Politeia proposal.

[Bounty program](https://bounty.decred.org/)

Decred Journal & Politeia Digest





#### How are funds managed?

Community vote directed, centrally administered (for now) by a non-profit LLC, Decred Holdings Group.

Approved contractors work autonomously on the project and bill for their time at an agreed rate. The process through which new contractors are approved involves social consensus of existing contractors. This will be formalized according to the method described in the [Decred Contractor Clearance Process proposal](https://proposals.decred.org/proposals/fa38a3593d9a3f6cb2478a24c25114f5097c572f6dadf24c78bb521ed10992a4) - when the associated [contractor management system](https://github.com/decred/contractor-mgmt) is ready for deployment.



#### How is work other than software development funded?

Scope of non-development work funded?

Treasury's scope goes beyond software development to include design, communications, community support, research and documentation.

Spend on non-development work?

Breakdown not known.



## Related projects

Decred's founders started by writing a full node implementation for **Bitcoin** in Go ([btcsuite](https://github.com/btcsuite/btcd)). Decred was started to address several [challenges](https://blog.companyzero.com/2015/12/iterating-bitcoin/) that they saw confronting Bitcoin, and Decred's node software started as a software fork of btcsuite. btcsuite and the btcd daemon is still in use today, including by the [Lightning Network](https://github.com/lightningnetwork/lnd). 

**[Hcash](https://github.com/HcashOrg/Hcash)** is a software fork of Decred, the operators have [cloned](https://medium.com/@media_30378/a-deeper-understanding-behind-hcash-2c4f96eb4363) several Decred software repositories, sometimes without the necessary [attribution](https://twitter.com/dnldd/status/1082687323169583104). 

[dcrtime](https://github.com/decred/dcrtime/) is being used by [votolegal](https://votolegal.com.br/)

[Atomic swap tools](https://github.com/decred/atomicswap/) are being used by QTUM, Viacoin, Vertcoin, Particl, and Bitcoin Atom, among others.



### Significant Entities

Company0 LLC (non-profit): Group that founded Decred, still a major contractor and presence. Previously called Conformal systems. https://www.companyzero.com/ Company0 also maintains btcd bitcoin node and zkc private comms tools. 

Decred Holdings Group LLC (non-profit): Entity that has custody of Treasury funds, responsible for processing invoices and making payments to contractors. 

Stakeholder collective - holders of current set of live tickets, open and dynamic group which anyone can join (by buying a ticket). Stakeholders control the Treasury in that the decide what constitutes eligible spending, put into practice by the contractor organization.

Contractors: People/organizations that work on Decred and are [paid](https://docs.decred.org/contributing/contributor-compensation/) by the Treasury.

Raedah Group: Corporate contractor

Eeter: Corporate contractor

Ditto: Corporate contractor


