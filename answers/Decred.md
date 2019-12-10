# Decred Governance
## Where does the governance happen?

Voting on changes to the consensus rules happens [on chain](https://voting.decred.org/). Off chain signalling proposals about policies and treasury spending are submitted and discussed on [Politeia](https://proposals.decred.org/), live tickets vote to approve or reject these.

## Consensus

- *Does the project have its own blockchain or is it a token on another chain? (many questions are not relevant for tokens)*

Decred's blockchain mainnet [launched](https://explorer.dcrdata.org/block/298e5cc3d985bfe7f81dc135f360abe089edd4396b86d2de66b0cef42b21d980) on February 8th 2016, with a premine accounting for 8% of the total supply, 4% issued to founders and 4% in an airdrop.

- *What is the mechanism for ensuring consensus about the state of the blockchain?*

The consensus mechanism involves two factors: Proof of Work and Proof of Stake.

- *Which entities interact with the blockchain? What role does each entity play? How are the "block producers" selected?*

[Proof of Work](https://docs.decred.org/mining/proof-of-work/) miners compete to find the solution to an arbitrary problem that can only be found by guessing (hashing). Decred uses the [Blake-256 Hash Function](https://docs.decred.org/research/blake-256-hash-function/). When a PoW miner finds a valid solution they create a block and broadcast it to the network.

Each Decred block requires approval from [Proof of Stake](https://docs.decred.org/proof-of-stake/proof-of-stake/) voters to be recognized as a valid block that can be built on. To participate in Proof of Stake, holders of DCR time-lock their coins to [buy tickets](https://docs.decred.org/proof-of-stake/how-to-stake/). The system is configured to target a live ticket pool size of 40,960 tickets, the ticket price goes up/down depending on whether there are too many/few live tickets. 

"[Block voting](https://docs.decred.org/proof-of-stake/proof-of-stake/)" refers to the role that tickets play in approving the work of PoW miners, in each block 5 tickets are called to vote and a majority must vote to approve the regular transaction tree of the previous block (the set of transactions the miner decided to include), otherwise it is invalidated, the miner's reward is stripped and other transactions returned to the mempool. You can see how tickets voted in a block under the Votes section for a block on beta.dcrdata.org ([example](https://beta.dcrdata.org/block/319764)).

- *How are changes to the consensus rules implemented?*

Decred has a formal on chain voting [process]() for adopting changes to the consensus rules, through which stakeholders vote to accept or reject the proposed changes. The voting process begins when at least 95% of PoW miners and 75% of PoS voters have upgraded their software to a new version with latent changes to the rules. Once these criteria are met, a voting period of 8,064 blocks (~4 weeks) begins, to decide whether the latent rule changes should be activated. For a rule change proposal to be approved, at least 75% of the tickets that vote must vote Yes. If this requirement is met, and a quorum of 10% tickets voting Yes or No is achieved, then the rule change will be activated 8,064 blocks (~4 weeks) later. You can see information about past and current consensus rule change votes on this [page](https://voting.decred.org/). 

## Funding

Decred's block reward is divided between PoW miners (60%), PoS voters (30%) and a Treasury fund (10%). 

Decred development is funded by a Treasury which receives 10% of the block reward. Currently, Decred Holding Group LLC controls the treasury [wallet](https://explorer.dcrdata.org/address/Dcur2mcGjmENx4DhNqDctW5wJCVyT3Qeqkx), but the plan is to transition to using a smart contract that is connected to a contractor management system ([in development](https://github.com/decred/contractor-mgmt)).

Work is performed by contractors, both corporate and individual. Contractors have considerable autonomy, individually and collectively. 

Stakeholders (holders with [PoS tickets](https://docs.decred.org/proof-of-stake/proof-of-stake/)) vote to direct the spending of Treasury funds through [Politeia](https://proposals.decred.org/). 

Approved contractors work autonomously on the project and bill for their time on agreed terms. The process through which new contractors are approved involves social consensus of existing contractors. This will be formalized according to the method described in the [Decred Contractor Clearance Process proposal](https://proposals.decred.org/proposals/fa38a3593d9a3f6cb2478a24c25114f5097c572f6dadf24c78bb521ed10992a4) - when the associated [contractor management system](https://github.com/decred/contractor-mgmt) is ready for deployment.

## Proposals and Voting

Governance of the project's Treasury and steering happens off-chain, formally through the [Politeia](https://docs.decred.org/governance/politeia/politeia/) [platform](https://proposals.decred.org/) and informally through a range of other social channels.

Politeia is a platform which facilitates the submission and discussion of Decred governance proposals, it is build to enable accountable censorship whereby the submitter of a proposal receives a censorship token which they can use to demonstrate that a certain proposal was submitted and censored. Politeia proposals are approved or rejected by ticket voting.

Proposals submitted to Politeia are initially screened by admins then published. Once published, the proposal is open for discussion and can be edited (revisions tracked) by the proposal owner in response to community feedback. Politeia proposal voting lasts for a default duration of one week (2,016 blocks), and proposals must achieve at least 60% approval from voting tickets to pass (with a quorum requirement that at least 20% of all live tickets vote Yes/No).

Participation in Decred's governance is relatively high, with [around 50%](https://explorer.dcrdata.org/charts?chart=stake-participation&zoom=ikd7pc00-jzxcow00&bin=day&axis=time) of circulating DCR being time-locked in exchange for tickets at any given time circa mid-2019. Politeia launched in October 2018, and as of September 14 2019:

- There have been 4 [on chain consensus rule change proposals](voting.decred.org) with mean active ticket participation (i.e. voting yes or no) of 69%. All of these have had near unanimous support as they represented uncontroversial protocol upgrades. One [change](https://github.com/decred/dcps/blob/master/dcp-0001/dcp-0001.mediawiki) may have proven controversial with miners if they had veto power within the system because it reduced the fees associated with ticket transactions. 
- There have been 36 [Politeia proposals](https://github.com/nottrunner/crypto-governance-research/blob/master/governance-proposals/decred-proposals.csv) which have made it to a vote, with mean ticket participation in those votes of 31.5%. An additional 14 proposals have been abandoned or are still under discussion.

![Participation in Decred Politeia and on chain consensus change votes](/img/decred-proposals-participation.png)

24 proposals have been [approved](https://proposals.decred.org/?tab=approved) and 12 [rejected](https://proposals.decred.org/?tab=rejected). Proposals have been approved which cover decisions like [hiring a PR firm](https://proposals.decred.org/proposals/27f87171d98b7923a1bd2bee6affed929fa2d2a6e178b5c80a9971a92a5c7f50), approving a [marketing budget](https://proposals.decred.org/proposals/c84a76685e4437a15760033725044a15ad832f68f9d123eb837337060a09f86e), various [research](https://proposals.decred.org/proposals/c68bb790ba0843980bb9695de4628995e75e0d1f36c992951db49eca7b3b4bcd) [projects](https://proposals.decred.org/proposals/78b50f218106f5de40f9bd7f604b048da168f2afbec32c8662722b70d62e4d36), [DEX infrastructure](https://proposals.decred.org/proposals/417607aaedff2942ff3701cdb4eff76637eca4ed7f7ba816e5c0bd2e971602e1), [Python tools](https://proposals.decred.org/proposals/20e967dad9e7398901decf3cfe0acf4e0853f6558a62607265c63fe791b8b124), a [bug bounty](https://proposals.decred.org/proposals/d33a2667469b56942adf42453def6cc2292325251e4cf791e806939ea9efc9e1), and policy decisions like a new [contractor clearance process](https://proposals.decred.org/proposals/fa38a3593d9a3f6cb2478a24c25114f5097c572f6dadf24c78bb521ed10992a4) and an [amendment](https://proposals.decred.org/proposals/fd56bb79e0383f40fc2d92f4473634c59f1aa0abda7aabe29079216202c83114) of the project's constitution. 

![Decred proposal voting outcomes, in order of vote completion](/img/decred-proposal-participation-and-approval-in-order.png)

Once proposals are approved, the contractor collective is responsible for ensuring that the work is completed satisfactorily, at which point the workers can invoice against the approved budget and be paid.

## Coin/Token Distribution

8% of the total supply was [pre-mined](https://docs.decred.org/faq/general/#3-how-was-the-decred-premine-distributed), with 4% being paid to the founders to compensate them for bring-up costs (at a rate of $0.49 per DCR) , and 4% being airdropped to people who signed up and were verified as unique humans (2,972 of which received 282.64 DCR each). 

The supply of Decred is [finite](https://docs.decred.org/governance/decred-constitution/), with a maximum of 21 million DCR to be created. The block reward reduces every 21.33 days (6,144 blocks) by a factor of 100/101. As of February 16th 2019 (block 319204), 44.4% of the maximum supply had been minted.

## Related projects

Decred's founders started by writing a full node implementation for **Bitcoin** in Go ([btcsuite](https://github.com/btcsuite/btcd)). Decred was started to address several [challenges](https://blog.companyzero.com/2015/12/iterating-bitcoin/) that they saw confronting Bitcoin, and Decred's node software started as a software fork of btcsuite. btcsuite and the btcd daemon is still in use today, including by the [Lightning Network](https://github.com/lightningnetwork/lnd). 

**[Hcash](https://github.com/HcashOrg/Hcash)** is a software fork of Decred, the operators have [cloned](https://medium.com/@media_30378/a-deeper-understanding-behind-hcash-2c4f96eb4363) several Decred software repositories, sometimes without the necessary [attribution](https://twitter.com/dnldd/status/1082687323169583104). 

[dcrtime](https://github.com/decred/dcrtime/) is being used by [votolegal](https://votolegal.com.br/)

[Atomic swap tools](https://github.com/decred/atomicswap/) are being used by QTUM, Viacoin, Vertcoin, Particl, and Bitcoin Atom, among others.

## Significant Entities

Company0 LLC (non-profit): Group that founded Decred, still a major contractor and presence. Previously called Conformal systems. https://www.companyzero.com/ Company0 also maintains btcd bitcoin node and zkc private comms tools. 

Decred Holdings Group LLC (non-profit): Entity that has custody of Treasury funds, responsible for processing invoices and making payments to contractors. 

Stakeholder collective - holders of current set of live tickets, open and dynamic group which anyone can join (by buying a ticket). Stakeholders control the Treasury in that the decide what constitutes eligible spending, put into practice by the contractor organization.

Contractors: People/organizations that work on Decred and are [paid](https://docs.decred.org/contributing/contributor-compensation/) by the Treasury.

Raedah Group: Corporate contractor

Eeter: Corporate contractor

Ditto: Corporate contractor

