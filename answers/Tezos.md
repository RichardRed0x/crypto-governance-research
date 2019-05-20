### Where does the governance happen?

Mostly [on chain](https://tzscan.io/proposals) with Bakers, also to some degree on other sites like [Kialo](https://www.kialo.com/tezos-protocol-amendment-1-25295) and [tezvote](https://tezvote.com/). 





# Blockchain Governance

* *How were/are coins distributed? Was there an ICO? Is there inflation now? Is there a fixed supply?*

The Tezos blockchain mainnet [launched](https://tezos.foundation/news/tezos-mainnet-is-live) on June 30 2018. An initial batch of tokens were pre-sold in an [ICO](https://cointelegraph.com/news/the-history-of-tezos-the-infamous-ico-trying-to-rebound-amidst-lawsuits-and-disputes) in July 2017 which raised 66k BTC and 361k ETH, worth approximately $232 million at the time - these contributions being framed as "[non-refundable donations](https://www.reuters.com/article/us-bitcoin-tezos-refunds/no-refund-for-tezos-contributors-cryptocurrency-broker-says-idUSKBN1DF2JQ)". The Tezos Foundation, established in Switzerland, [received](https://tezos.foundation/history) these ICO funds, with a mandate to give "support to Tezos and related technologies as well as to the Tezos community".

The initial supply was composed of 607 million XTZ for ICO funders and 76 million XTZ for each of the Tezos Foundation and DLS - for a total initial supply of 763 million XTZ. Tezos also has ongoing inflation, with ~42 million XTZ awarded to Bakers each year (or a target of ~5.5% annual inflation). https://messari.io/asset/tezos

Dynamic Ledger Solutions (DLS) is a company [created](https://cointelegraph.com/news/the-history-of-tezos-the-infamous-ico-trying-to-rebound-amidst-lawsuits-and-disputes) by Arthur Breitman in 2015 to hold the rights to Tezos software, and contracted by the Tezos Foundation following the ICO. Stakes in DLS were sold to early investors to raise funds for Tezos before the ICO. 

* *What is the mechanism for ensuring consensus about the state of the blockchain?*

The process of adding new blocks to Tezos is referred to as Baking, and so Bakers are the only actors who participate in creating new blocks and voting on consensus rule changes. There is a minimum "roll size" (number of XTZ held) requirement to be a baker (initially 10k XTZ, will likely be 8k XTZ after the completion of the first upgrade cycle) - and so Tezos' consensus mechanism can be considered to be a form of PoS. Delegation is also baked into the Tezos protocol, and holders who do not wish to bake themselves can delegate their stake to a Baker and receive a share of their rewards. Tezos could therefore be considered to have Delegated Proof of Stake (DPoS), but without the fixed number of block producers and election dynamic usually associated with DPoS (the number of possible Bakers in Tezos is much larger). The Tezos implementation of PoS has been referred to as [Liquid Proof of Stake](https://medium.com/tezos/liquid-proof-of-stake-aec2f7ef1da7).

* *Which entities interact with the blockchain? What role does each entity play? How are the "block producers" selected?*

Bakers are the only entities that participate in creating new blocks, they do so by baking a new block when randomly selected, and by endorsing the new blocks of other bakers (a single block can have many endorsers, and the reward for endorsing is smaller than for baking). Through this method of baking and endorsing, rival blocks engage in short-term competition but are quickly locked in as subsequent blocks are baked. When proposing or endorsing new blocks, a Baker puts up some of their stake as a security deposit - if other bakers observe them double baking or endorsing (and possibly other types of bad behavior) they can be accused and lose this security deposit (with half going to the accuser).

* *How are changes to the consensus rules decided on and implemented?*

Bakers participate in a four-stage voting [process](https://medium.com/tezos/amending-tezos-b77949d97e1e) to adopt changes to the consensus rules. The amendment process has 4 phases, each lasting 8 "cycles" (a cycle lasts around 3 days, so each phase lasts for around 24 days). In the first phase bakers submit and upvote proposals. When the first phase ends, the most upvoted proposal will progress to phase 2, where it must be approved by at least 80% of bakers. If the criteria are met, this is followed by a testing phase in which a testnet fork with the changes applied is created and runs for 48 hours (a further testnet matching the proposal may be run for the rest of this phase to allow further testing). After the testing phase, bakers vote on whether the changes should be activated, with an 80% supermajority required (adjusts dynamically based on previous participation rates). After this 4th phase the changes are activated (or not) and the cycle begins again with new proposals.

Holders who delegate their XTZ to bakers have no direct input into decision-making votes, but bakers [may engage](https://twitter.com/JacobArluck/status/1113590733771018245) with their delegators when deciding how to vote.



### Further reading 

<https://tezos.gitlab.io/mainnet/>



# Funding

* What is the reference node implementation?

* Any other full node implementations?



## For the reference node implementation



### How is development funded?

- Donations
- ICO
- Block reward
- Foundation/company
- Grants
- Not public/known

##### How much or what proportion from each type of source?



###### How are funds managed?

- Non-profit foundation
- For-profit company
- Community voting/DAO mechanism



**What other software does the entity(ies) which funds the reference node produce?** 



**What else do the entities which develop or fund the reference node do? (not software)**





#### How is work other than development (e.g. marketing) funded?

Scope of non-development work funded?

Spend on non-development work?

### Related projects

Are there any significant projects which are related? For example, is this a fork of another project? Have other projects forked this one? 

Tezos Libre? The KYC-free alternative chain

### Significant Entities

Tezos Foundation 









Name:

Type: profit/non-profit

Activity type: Investment, grant-making, product/service delivery

Managed how:

Founded when and by who

Size: Resources, Employees

Links to coins/chains other than the one in question
