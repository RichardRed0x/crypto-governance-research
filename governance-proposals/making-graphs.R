library(ggplot2)





aragon = read.csv("Aragon-proposals.csv", stringsAsFactors = FALSE)
aragon$eligible_voters = 39609523.80952380954
aragon$voter_participation = (aragon$total_votes/aragon$eligible_voters)*100

#write.csv(aragon, file = "Aragon-proposals.csv", row.names = FALSE)

decred.politeia = read.csv("decred-proposals.csv", stringsAsFactors = FALSE)
dash = read.csv("dash-proposals.csv", stringsAsFactors = FALSE)
decred.consensus = read.csv("decred-proposals-onchain.csv", stringsAsFactors = FALSE)
decred.consensus$total_votes = decred.consensus$yes_votes+decred.consensus$no_votes
decred.consensus$voter_participation = (decred.consensus$total_votes/decred.consensus$eligible_voters)*100

aragon$onchain = "no"
dash$onchain = "yes"
decred.politeia$onchain = "no"
decred.consensus$onchain = "yes"

decred = rbind(decred.politeia,decred.consensus)

df = rbind(aragon,dash,decred.politeia, decred.consensus)

p.participation = ggplot(df, aes(x = voter_participation, fill = onchain))+
  geom_histogram(bins = 20)+
  facet_wrap(~project, ncol = 1, scales = "free_y")+
  xlim(c(0,100))+
  xlab("Voter participation %")+
  ylab("Number of proposals")
ggsave("voter_participation.png", width = 9.55, height = 5)

#per project
p.decred = ggplot(decred, aes(voter_participation, fill = onchain))+
  geom_histogram(bins = 20)+
  xlab("Voter participation %")+
  ylab("Number of proposals")+
  xlim(c(0,100))+
  ggtitle("Decred proposals")

ggsave("Decred-proposals-participation.png", width = 9.55, height = 5)
  
p.aragon = ggplot(aragon, aes(voter_participation))+
  geom_histogram(bins = 20)+
  xlab("Voter participation %")+
  ylab("Number of proposals")+
  xlim(c(0,100))+
  ggtitle("aragon proposals")

ggsave("aragon-proposals-participation.png", width = 9.55, height = 5)

p.dash = ggplot(dash, aes(voter_participation))+
  geom_histogram(bins = 20)+
  xlab("Voter participation %")+
  ylab("Number of proposals")+
  xlim(c(0,100))+
  ggtitle("dash proposals")

ggsave("dash-proposals-participation.png", width = 9.55, height = 5)

#histogram of approval rate facet by project

df$approval = (df$yes_votes/df$total_votes)*100

p.approval = ggplot(df, aes(x = approval, fill = onchain))+
  geom_histogram(bins = 20)+
  facet_wrap(~project, ncol = 1, scales = "free_y")+
  xlab("Proposal approval %")+
  ylab("Number of proposals")+  

ggsave("proposals-approval.png", width = 9.55, height = 5)


