### Where does the governance happen?


The main goal of the [MakerDAO](https://makerdao.com) is keeping the value of [DAI](https://coinmarketcap.com/currencies/dai/), a collateral-backed cryptocurrency, stable relative to the US Dollar (i.e. a "soft peg" stablecoin). DAI is issued and managed through a system of smart contracts running on the Ethereum blockchain. MakerDAO governance is primarily concerned with the determining the risk parameters that are used to manage the portfolio of assets backing DAI (currently just ETH, but soon others with the introduction of [multi-collateral DAI](https://medium.com/pov-crypto/the-role-of-ether-in-multi-collateral-dai-cfc8b43ab50c). 

Central to Maker's governance is the MKR token ("probably the 1st" [ERC20](https://en.wikipedia.org/wiki/ERC-20) token on Ethereum according to Maker's founder in an Unchained [podcast](https://unchainedpodcast.com/rune-christensen-of-makerdao-part-1-how-to-keep-a-crypto-collateralized-stablecoin-afloat/)). MKR is Maker's "governance" token. MKR holders vote on proposed changes to the system via "voting contracts" (smart contracts running on the Ethereum blockchain). 1 MKR = 1 vote, and there are two types of votes: "executive votes" and "governance votes".

MKR holders are incentivized to vote on proposals that preserve the stability of the system so that a wide range of actors can use the system and generate stability fees, which must be paid in MKR. When a user pays the stability fee in MKR to unlock their collateral, the MKR is burned, decreasing the total supply.

A list of major milestones and events, including previous votes, is maintained [here](https://github.com/makerdao/awesome-makerdao/blob/master/README.md#major-milestones--events). Technical details around smart contract voting and python code for tracking votes can be found in this [article](https://medium.com/@banteg/deep-dive-into-makerdao-governance-437c89493203).

#### Governance votes

Governance votes can be used to vote on one or multiple issues at once. They do not automatically trigger updates to the Maker system; these must be implemented via executive votes. Nor are they binding resolutions. Rather, they are used to poll community sentiment towards larger, more substantial changes to the system. This can include making changes to the structure or governance processes of the Maker Foundation, including adding new Oracles, adding a new risk team (people that create and apply risk models), or adopting a new voting process. Votes can be time-limited. If the vote is time-limited, votes are tallied at the end of the voting period and a simple majority (<50%) determines the outcome.

#### Executive votes

Executive votes are a more common occurrence, and are used to change the state, or "governance variables" of the smart contracts constituting the Maker infrastructure. Typically this means modifying the existing "risk parameters" of smart contracts that manage Collateral Debt Positions (CDPs), the debt instruments used to issue DAI and manage its supply. For example, an executive vote could be held to decide whether or not to raise the "stability fee" (i.e. "interest" paid to MKR holders on loans of DAI). Executive votes can also introduce new parameters or smart contracts. For example adding a new collateral type once multi-collateral DAI is launched.

Executive votes are binding. If passed, they are automatically implemented on the blockchain after a 24 hr delay (a measure to protect against hacks or governance attacks). Any Ethereum address can make a proposal and trigger a vote. However, in practice, since
the MKR supply is currently centralized into the hands of a few key players such as the Maker Foundation and large investors (see [Coin Distribution](#coin-distribution)), only executive votes created by the "core team" currently have a reasonable chance of passing. 

For now, proposals for executive votes are created in a more traditional, centralized process within the Maker Foundation, utilizing the "Risk Governance Framework" detailed below, a formal process that attempts to emulate the scientific process. Feedback from MKR holders and the general "governance community" is taken into account at various stages. Maker's goal is to perform a "gradual decentralization" of this process over time as the system matures.

#### Risk Governance Framework

To protect itself from bias, polarizing debate, and self serving rhetoric, Maker has created an internal process that utilizes an objective "risk governance framework". In this process, "risk teams" (professionals employed by the Maker Foundation) utilize a formal, rigorous framework for continually evaluating the qualitative and quantitative risks associated with various collateral types. For instance the volatility risk, liquidity risk, and stability of the asset fundamentals. The outputs of this framework are then input into well-understood risk models borrowed from traditional finance to determine optimal "risk parameters" such as the debt ceiling, liquidation ratio, stability fee, and other parameters. The core team then presents their new models, data and suggested parameters to MKR holders and the community at large. Feedback from the community is incorporated and then put into a proposal for an executive vote. The executive vote itself can be used to gather further feedback from MKR holders, which can be incorporated back into the proposal. Eventually, MakerDAO intends to further decentralize this process, creating multiple risk teams elected by MKR holders that compete with each other using the risk governance framework, creating a "decentralized, open scientific risk management community".

In practice, this process seems to follow a fairly regular weekly cadence. Risk team members answer questions about potential changes to risk parameters on a regular basis on Maker's [chat](https://chat.makerdao.com/) and [subreddit](https://www.reddit.com/r/MakerDAO). Major decisions are typically debated and made during weekly [MakerDAO Governance and Risk meetings](https://calendar.google.com/calendar/embed?src=makerdao.com_3efhm2ghipksegl009ktniomdk%40group.calendar.google.com&ctz=America%2FLos_Angeles), which are livestreamed and open to community participation via chat, then made available on [YouTube](https://www.youtube.com/playlist?list=PLLzkWCj8ywWNq5-90-Id6VPSsrk4OWVan) and [Soundcloud](https://soundcloud.com/makerdao/sets/governance-and-risk). Meetings and transcripts are made available on [github](https://github.com/scottrepreneur/maker-minutes). Typically, decisions made in Governance and Risk meetings are put to the community in Governance votes to poll sentiment, then put into Executive votes shortly thereafter unless governance votes reflect strong dissent. 



#### Community engagement

Maker's most active communication platforms are its [chat](https://chat.makerdao.com/), subreddit ([r/MakerDAO](https://www.reddit.com/r/MakerDAO)), and [GitHub](https://github.com/makerdao/). Major announcements are typically made through Reddit or its [official blog](https://blog.makerdao.com/). Maker also hosts a regular schedule of in-person [events](https://makerdao.com/en/events/?no-cache=1)

When larger scale changes to the system are considered, on-chain "governance votes" are held to poll community sentiment before implementing them. A [Governance Dashboard](https://vote.makerdao.com/) displays governance-related information and real-time voting data .


# Blockchain Governance

On-chain voting is enabled using the MKR "governance" token. To vote on proposed changes to the system, MKR holders must lock their MKR in a "voting contract" in return for IOU tokens. 1 IOU token = 1 vote. Voting consists of sending these IOU tokens to a "proposal contract" that represents a proposed change of state to the system. Proposal contracts are smart contracts on the Ethereum blockchain that can take different forms, depending on the state change proposed. Proposal contracts can propose a single change, or multiple changes at once. Voters can vote for up to five proposals at once. If voting for multiple proposals, they all receive equal weighting. Voters can change their votes at any time. 

For governance votes, which are non-binding and used to poll MKR holder sentiment about larger issues, votes can be time-limited. If the vote is time-limited, votes are tallied at the end of the voting period and a simple majority (<50%) determines the outcome. 

Executive voting is not time-limited, but instead employs continuous [approval voting](https://en.wikipedia.org/wiki/Approval_voting). Whichever proposal currently has the most votes represents the current state of the system. There is no quorum, incentivizing MKR holders' continuous participation. At any time, a new proposal can be submitted to MKR holders (e.g. a proposal to lower the debt ceiling to decrease exposure to ETH). If it gains a majority of votes, it will be automatically implemented. The proposal contract is granted administrative access, and after implementing changes to the system, wipes its logic and cannot be reused. New proposals are not immediately implemented however. There is a 24 hr delay period, in which "Emergency Oracles" can trigger an emergency shutdown in the event of "long-term market irrationality", hacking, or security breaches. In multi-collateral DAI, Emergency Oracles will have the unilateral ability to trigger an emergency shutdown. This will give a minority of MKR holders the ability to trigger a shutdown if they believe the "governance community" (core team) is making off-chain decisions that have become biased or corrupted. For example, if large MKR holders try to get favorable risk parameters for an asset they hold to pump their bags.

Changes to existing risk parameters (variables in existing smart contracts) can be implemented automatically. Major upgrades involving changes to smart contract logic must be performed through the emergency shutdown process (i.e. rebooting the entire system).

## External actors

- **Price oracles:** To estimate the price of a collateral asset, Maker uses a number of (hopefully) independent price oracles. To protect against the possibility of a price oracle becoming compromised, the median of all price oracle prices is used as input to the system. To protect against the unlikely scenario that enough oracles are compromised to move the median price, a "Oracle Security Module" delays the price fed into the system by one hour. If the Oracle Security Module detects an attack, it can issue an emergency shutdown. The Oracle Security Module is comprised of members of the core team and Emergency Oracles selected by MKR holders.
- **Keepers:** Keepers are external, permissionless actors that participate in the Debt Auctions and Collateral Auctions when CDPs are liquidated. They can also perform arbitrage when the price of DAI diverges from its $1 peg, or other profit-seeking activities.
- **Emergency oracles:** Emergency oracles are selected by MKR holders and have the ability to unilaterally trigger an emergency shutdown. They serve as a last line of defense, should a malicious proposal or governance attack threaten the system.

## Coin distribution

The MKR token was launched on Dec 27, 2017. 1,000,000 MKR were premined. Maker did not ICO. In the early days, tokens were sold strategically by the Maker Foundation to members of the community, with preference given to early contributors to the project. Sales were largely negotiated on an individual basis in Maker's chat.

In 2017, the Maker foundation made its first institutional sale to Polychain Capital, a deal which was publicly [negotiated](https://www.reddit.com/r/MakerDAO/comments/5mxwxw/polychain_capital_proposal_to_makerdao/) with community input on the MakerDAO subreddit. Subsequent sales to other institutional investors such as Andreesen Horowitz, Placeholder VC, and others, were modeled on this deal, according to founder Rune Christensen in a [podcast](https://unchainedpodcast.com/rune-christensen-of-makerdao-part-1-how-to-keep-a-crypto-collateralized-stablecoin-afloat/), where Maker distribution is discussed generally. 

While wider distribution of MKR is planned, MKR is fairly concentrated among a few key players. As reported in a CoinDesk [article](https://www.coindesk.com/makerdao-dai-fee-hike-vote) on March 6, 2019, according to [Etherscan](https://etherscan.io/token/0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2#balances), the top three MKR accounts hold a combined 55 percent of tokens. At the time of the article's publication, the largest wallet, containing 27% of the supply, is a developer fund. This fund is controlled by a multi-signature wallet controlled by the Maker Foundation’s board. According to MakerDAO community lead David Utrobin, the Maker Foundation's intention is to fully spend this fund "within the next few years". In the article, several large MKR holders were asked for information on their holdings. Polychain capital confirmed it held
“a significant portion” of MKR tokens. 6 percent is owned by Andreessen Horowitz’s a16z fund. Hedge fund 1confirmation confirmed they are a "significant holder". The Ethereum Foundation and Ethereum co-founder Joseph Lubin declined to comment regarding their holdings. 


Because MKR must be used to pay stability fees, and this MKR is burned upon payment, the supply of MKR is continually decreasing as CDPs are paid off. On Jan 29th, 2019, Rune Christensen estimated on a [podcast](https://unchainedpodcast.com/rune-christensen-of-makerdao-part-1-how-to-keep-a-crypto-collateralized-stablecoin-afloat/) that probably "less than 0.1% of the total supply" had been burned.


### Further reading 

[Overview of MakerDAO | Dai](https://github.com/makerdao/awesome-makerdao/blob/master/README.md#governance): a collection of articles, FAQs, and other resources on the official MakerDAO [GitHub](https://github.com/makerdao).

## Governance-focused articles

[Deep dive into MakerDAO Governance](https://medium.com/@banteg/deep-dive-into-makerdao-governance-437c89493203)

[MakerDAO Governance Risk Framework (Part 1)](https://medium.com/makerdao/makerdao-governance-risk-framework-38625f514101)

[MakerDAO Governance Risk Framework (Part 2)](https://medium.com/makerdao/makerdao-governance-risk-framework-fc8939f3d4e9)

[MakerDAO Governance Risk Framework (Part 3)](https://medium.com/makerdao/makerdao-governance-risk-framework-part-3-7a4c620f4077)

[Evaluating MKR Buyback and Burn model](https://medium.com/@TrustlessState/evaluating-mkr-def6d36092bd): Medium Post by David Hoffman


# Funding

The Maker Foundation, which employs a team of developers, economists, designers, community managers and others, is funded by sales of the MKR token to investors and stability fees from CDPs when loans are repaid.  MakerDAO and Venture Capital firm L4 have also recently announced the [Stable Fund](https://medium.com/@stablefund/introducing-the-stable-fund-45-million-for-the-makerdao-ecosystem-def79afc4b2a), which will provide $45 million in grants and investments for projects using DAI or the underlying Maker infrastructure.


## For the reference node implementation

N/A

## \* Any other full node implementations?

N/A

# For the reference node implementation

N/A

### How is development funded?

Same source as general funding?

##### How much or what proportion from each type of source?

?

###### How are funds managed?

Funds are managed by the Maker Foundation. Or MakerDAO?

**What other software does the entity(ies) which funds the reference node produce?** 

In addition to the smart contracts underpinning the "DAI stablecoin system", the Maker foundation has also funded the creation of other related software, including the [Governance Dashboard](https://vote.makerdao.com/), [hackathon projects](https://github.com/makerdao/hackathons), reference software hosted on its [GitHub org](https://github.com/makerdao) for external actors ([keepers](https://github.com/makerdao/bite-keeper), [market making bots](https://github.com/makerdao/pymaker), etc.), and the [Oasis DEX](https://developer.makerdao.com/oasis/), the first fully on-chain DEX running on Ethereum. In January 2019, Oasis DEX was taken down, with plans to replace it with a DEX capable of supporting multi-collateral DAI. On the same day, the Oasis team [launched](https://medium.com/makerdao/a-new-oasis-5b9539a64adf) the [eth2dai](https://eth2dai.com/exchange/WETH/DAI) DEX with just the WETH/DAI pair 

**What else do the entities which develop or fund the reference node do? (not software)**

The Maker Foundation non-development work includes economics research, community development, philanthropy, business development, PR, and other functions related to the DAI stablecoin system.


#### How is work other than development (e.g. marketing) funded?

See above

Spend on non-development work?

?

### Related projects

_Are there any significant projects which are related? For example, is this a fork of another project? Have other projects forked this one?_

I don't believe Maker has been forked...



### Significant Entities

Name:

MakerDAO was funded in 2014 by Rune Christensen.

Crunchbase profile: [https://www.crunchbase.com/organization/makerdao#section-overview](https://www.crunchbase.com/organization/makerdao#section-overview)

## Foundation is separate?

_Type: profit/non-profit_

MakerDAO is a for-profit company

_Activity type: Investment, grant-making, product/service delivery_

Produces the DAI stablecoin, decentralized finance infrastructure

Managed how:

?

_Founded when and by who_

Founded by Rune Christensen in 2014

The Maker Foundation lists 66 employees on the makerdao webpage,

[https://makerdao.com/en/team](https://makerdao.com/en/team)

Its LinkedIn profile lists 58 employees

[https://www.linkedin.com/company/makerdao/](https://www.linkedin.com/company/makerdao/)

Size: Resources, Employees

_Links to coins/chains other than the one in question_

N/A



##### Contributor view (later):

The MakerDAO org lists 125 repositories,

[https://github.com/makerdao](https://github.com/makerdao)

Presumably many contributors...


1. Define contributors through GitHub events (Pushes, PRs) - easy
2. Classify each contributor wrt if/how their work is funded - hard