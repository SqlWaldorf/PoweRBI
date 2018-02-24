
library(rtweet)

ls(package: rtweet)

# Who's tweeting about SQLBits?


sqlbitstweets <- search_tweets("#SQLBits", n = 300)
View(sqlbitstweets)

ud <- users_data(sqlbitstweets)
View(ud)

# what's on my Twitter timeline?
mytimeline <- get_timeline("SQLWaldorf")
View(mytimeline)

# Mutual followers
followMe <- get_followers("SQLWaldorf")
length(followMe$user_id)

followedByMe <- get_friends("SQLWaldorf")
length(followedByMe$user_id)

mutualFollowers <- intersect(followMe$user_id, followedByMe$user_id)
length(mutualFollowers)

# Are we trending on Twitter?
ukTrends <- get_trends("United Kingdom")
View(ukTrends)

grep("sql", ukTrends$trend, ignore.case = T, value = T)
grep("sql", ukTrends$trend, ignore.case = T)

ukTrends[grep("sql", ukTrends$trend, ignore.case = T),]

# what have UK and Belgium in common?
homelandTrends <- get_trends("Belgium")
trendsInCommon <- intersect(ukTrends$trend,homelandTrends$trend)

View(trendsInCommon)

# Top people involved in SQL Server (according to Twitter)
sql_users <- search_users("SQL Server", n = 50)
View(sql_users)

# Final script
library(rtweet)
Sys.setenv(TWITTER_PAT = "c:/Users/Nico/Documents/twitter_token.rds")
res <- search_tweets("sqlbits", n = 150)

