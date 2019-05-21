### Where does the governance happen?

Mostly [on chain](https://tzscan.io/proposals) with Bakers, also to some degree on other sites like [Kialo](https://www.kialo.com/tezos-protocol-amendment-1-25295) and [tezvote](https://tezvote.com/). 

# Blockchain Governance

Tezos uses Proof of Stake consensus and selects "bakers" to produce blocks based on the number of "rolls" of XTZ they have. The minimum roll size is 10,000 XTZ (soon to be 8,000 XTZ following the first [upgrade](https://www.coindesk.com/welcome-to-athens-tezos-completes-historic-first-blockchain-vote) approval) or about $16,700 at 05/21/2019 prices. Holders can also delegate their XTZ to bakers, who use it to add rolls to their stake and improve their chances of being selected to bake - bakers pass some of the reward back to the delegators minus a [fee](https://mytezosbaker.com/) of 5-33%. 

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

There is only one [implementation](https://gitlab.com/tezos/tezos/) of a Tezos full/baking node.

### How is development funded?

The Tezos Foundation was established in 2017 to hold most of the ICO proceeds (and some XTZ), with a mandate to use these funds to "support to Tezos and related technologies as well as to the Tezos community". The foundation has a [council](https://tezos.foundation/tezos-foundation-council) of 5 people who steer its direction and how it allocates its capital.

Some of the ICO proceeds were [allocated](https://steemit.com/cryptocurrency/@roshania/tezos-ico-transparency-memo) to DLS along with an a portion of the initial XTZ tokens. DLS was created by Arthur Breitman to hold the IP for Tezos protocol software, trademarks, etc. Tezos Foundation and DLS entered into a contract whereby the Foundation would pay 8.5% of the ICO proceeds (around $20 million at the time) to acquire DLS and its assets, then release all of the software under a free MIT license. This deal was included in the ICO terms, with a stipulation that it would be completed once the Tezos mainnet had been in operation and stable for 3 months. The Tezos Foundation and DLS were also granted 76 million XTZ each, with DLS's allocation on a 48 month vesting schedule.

There is very little information available about how the Foundation is allocating its funds. There are [often](https://tezos.foundation/news/tezzigator-receives-grant-to-expand-cloud-hsm-support-for-tezos-bakers) [news](https://tezos.foundation/news/supporting-the-development-of-block-explorers-and-smart-contract-languages-for-the-tezos-ecosystem) [items](https://tezos.foundation/news/tezos-foundation-supports-tezos-riot-forum) on the foundation website that say a particular team/project is being funded, but these have no information about how much funding is being given. 

The foundation is being [audited](https://tezos.foundation/news/statement-on-2017-statutory-audit-completed-by-pwc-switzerland) by PwC but no details of its finances are being openly published. 

The Foundation's grant programs [page](https://tezos.foundation/grants-overview) describes Research and Education, Ecosystem, and Community funding streams, but the first two are lacking detail and "RFPs are forthcoming" while the community page just lists some organizations that have received funding.

The grants page says this about the selection process (advisors vote on proposals then the 5-person council vote to approve those the advisors put forward).

> The Foundation’s grantmaking efforts will be administered by the Tocqueville Group, an independent professional services company. All grant proposals are evaluated by an advisory committee before recommendations are sent to the Council for final votes. An advisory committee is composed of scientists and researchers from premier institutions, Tezos developers, serial entrepreneurs, and other qualified community members. A majority of an advisory committee must recommend a proposal in order for it to be sent to the Council for a final vote. Moving forward, only proposals that respond to specific RFPs will be considered. RFPs will be issued on a quarterly basis.

#### How is work other than development (e.g. marketing) funded?

As noted above, the Foundation website mentions Research and Education programs, but provides no detail. It seems ecosystem and community partners are being funded.

### Related projects

Tezos Libre [is](https://tzlibre.github.io/)/[was](https://www.reuters.com/brandfeatures/venture-capital/article?id=38757) an attempt to create a rival Tezos chain which would grant tokens to people who participated in the Tezos ICO and claimed them. Tezos Libre was created as a rejection of the decision to require KYC verification for Tezos ICO participants before they could receive their tokens - it billed itself as KYC-free.  

### Significant Entities

Tezos Foundation and DLS mentioned above.

