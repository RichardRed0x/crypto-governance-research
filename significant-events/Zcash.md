February 2019

A counterfeiting vulnerability was [discovered](https://z.cash/blog/zcash-counterfeiting-vulnerability-successfully-remediated/) in Zcash in early 2018. "This vulnerability is so subtle that it evaded years of analysis by expert cryptographers focused on zero-knowledge proving systems and zk-SNARKs.". It was silently patched with the Sapling network upgrade that occurred on Oct 28, 2018, and this [post](https://z.cash/blog/zcash-counterfeiting-vulnerability-successfully-remediated/) on Feb 5 explained how the vulnerability had been dealt with within Zcash and how other affected coins (like Horizen and Komodo) were notified. The nature of Zcash cryptography is such that it is difficult to determine if any ZEC was counterfeited while the vulnerability was present. The Zcash team reporting on the bug believes it had not been exploited because "discovery of the vulnerability would have required a high level of technical and cryptographic sophistication that very few people possess."



April 2019

Ycash, a "friendly fork" of Zcash, was [announced](https://forum.zcashcommunity.com/t/announcing-ycash-the-first-friendly-fork-of-the-zcash-blockchain/33162). Ycash will build off a snapshot of the Zcash chain, and will diverge in two ways (replacing the current 20% Founders Reward with a perpetual 5% reward going to a newly created Ycash foundation, and switching the PoW mining algorithm to something more conducive to mining on commodity hardware) while aiming to incorporate future improvements from Zcash. Zooko Wilcox wrote a [blog post](https://z.cash/blog/future-friendly-fork/) about "A Future Friendly Fork" in 2017, and this appears to have inspired the positioning of Ycash as a friendly fork. Zooko has also commented on the Ycash post to say that he sees Ycash as a positive development for Zcash.

The Zcash Foundation [announced](https://www.zfnd.org/blog/kzen-multisig/) funding for a research project with KZen Networks to enable private n-of-n multisig transactions for Sapling Zcash without requiring a consensus change. The effort is related to KZen's work on [threshold signatures](https://www.kzencorp.com/post/threshold-signatures-private-key-the-next-generation), which are similar to multisig but are indistinguishable from regular signatures.



May 2019

Zooko [commented](https://forum.zcashcommunity.com/t/the-future-of-zcash-in-the-year-2020/32372/173) on a long-running discussion about the future of Zcash development to express support for a new dev fund. Zcash currently allocates 20% of the block rewards to a founders reward but this is due to end in 2020. Zooko and many other advocates think the new dev fund needs to be more decentralized than the founder's reward's reliance on the Electronic Coin Company, and are encouraging community members to present and develop plans for decentralized governance of this fund.



June 2019

Parity Technologies [released](https://www.parity.io/parity-releases-zebra-in-collaboration-with-zcash-foundation/) an alpha version of Zebra, an alternative Zcash node implementation written in Rust. The [codebase](https://github.com/ZcashFoundation/zebra) has been handed over to the Zcash Foundation. Parity first [announced](https://www.parity.io/parity-teams-up-with-zcash-foundation-for-parity-zcash-client/) plans to build an alternative node in Oct 2018. Zebra was derived from Parity's Rust [Bitcoin implementation](https://github.com/paritytech/parity-bitcoin) and will lay the foundation for a future Polkadot bridge.

Zcash continues to move towards a method of funding development long-term through a portion of the block reward, likely 10%. Zooko (CEO of Electric Coin Company) has [stated](https://finance.yahoo.com/news/zooko-wilcox-gives-zcash-community-154140125.html) that the ECC needs 12 months of runway to function and if no continuation of funding for ECC is established one year before the founder's reward, then ECC will have to consider pivoting to other projects which can generate revenue. Zooko has also expressed the opinion that the ECC should not take the lead on deciding how this funding mechanism should work, and that it should be more decentralized than the current setup. Zooko has been [looking](https://twitter.com/zooko/status/1137494548148416512) at Decred's governance as part of this process: "In a voting system with lots of cold coins, like Zcash, I would expect a good turnout to be around 1%.".

July 2019

Chris Burniske of Placeholder VC (holders of Decred and Zcash) provided a good [summary](https://forum.zcashcommunity.com/t/placeholder-considerations-resources-governance-and-legitimacy-in-nu4/34045) of the situation facing the Zcash community as the founders reward expires, advocating for a continuation of 20% block reward to fund project development for another 4 years, with a split of 70% to "Protocol Development" and 30% to "Growth Funds".

Zooko Wilcox published a [personal letter](https://medium.com/@zooko_25893/a-personal-letter-about-the-possibility-of-a-new-zcash-dev-fund-f6d30df64392) about the possibility of a new Zcash dev fund, which explains that he always knew that the time would come when funding would run out and create a problem that could only be solved through a "messy and difficult process" such as the Zcash community is currently going through. Zooko stated again that he cannot be the one to make the decision and that it should come from the community, but as the CEO of ECC he has considerable influence in the community, and the community has no established method of making decisions.

All of the various options being considered have been helpfully summarized in this [megathread](https://forum.zcashcommunity.com/t/future-of-zcash-dev-funding-megathread-everything-in-one-place/34063). As Chris Burniske remarked in his post, the first question is how to make the decision about the decision in a way which is perceived as legitimate. Given time constraints Chris advocates the use of polling to gauge preference for the various options, with a final decision made using the ECC and Zcash Foundation 2-of-2 multisig. Zooko stated that the ECC will announce a method of decision-making in early Aug.