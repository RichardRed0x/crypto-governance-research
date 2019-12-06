library(ggplot2)
library(lubridate)



aragon = read.csv("Aragon-proposals-manual.csv", stringsAsFactors = FALSE)
aragon$eligible_voters = 39609523.80952380954

aragon$total_votes = aragon$yes_votes+aragon$no_votes
aragon$voter_participation = (aragon$total_votes/aragon$eligible_voters)*100
write.csv(aragon, file = "Aragon-proposals.csv", row.names = FALSE)

#write.csv(aragon, file = "Aragon-proposals.csv", row.names = FALSE)

decred.politeia = read.csv("decred-proposals.csv", stringsAsFactors = FALSE)
dash = read.csv("dash-proposals.csv", stringsAsFactors = FALSE)
decred.consensus = read.csv("decred-proposals-onchain.csv", stringsAsFactors = FALSE)
decred.consensus$total_votes = decred.consensus$yes_votes+decred.consensus$no_votes
decred.consensus$voter_participation = (decred.consensus$total_votes/as.numeric(decred.consensus$eligible_voters))*100

aragon$onchain = "no"
dash$onchain = "yes"
decred.politeia$onchain = "no"
decred.consensus$onchain = "yes"

decred = rbind(decred.politeia,decred.consensus)

df = rbind(aragon,dash,decred.politeia, decred.consensus)
df$approval = (df$yes_votes/df$total_votes)*100



aragon$approval = (aragon$yes_votes/aragon$total_votes)*100

#startdate is actually enddate
#enddate can be taken from url

eos = read.csv("eos-proposals.csv",stringsAsFactors = FALSE)
#make voting_enddate proper
eos$voting_enddate = as.character(eos$voting_enddate)
eos$voting_enddate = as.POSIXct(eos$voting_enddate, format = "%d %b %Y %I:%M:%S %p")
eos$voting_enddate = ymd_hms(eos$voting_enddate)

eos$yes_votes = eos$total_votes*(eos$approval/100)
eos$no_votes = eos$total_votes*((100-eos$approval)/100)
eos$eligible_voters = 924995260
eos$voter_participation = (eos$total_votes/eos$eligible_voters)*100
eos$project = "eos"
eos$onchain = "yes"

substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

eos$voting_startdate = substrRight(eos$url,8)
eos$voting_startdate = as.Date(eos$voting_startdate, format = "%Y%m%d")


