


pkg <- c( "validate"     , "errorlocate", "simputation"
         ,"validatetools", "rspa"       , "dcmodify"
         , "deductive"
         , "tabplotD3","treemap","tmap","tabplot"
         , "tmaptools"
         ,"LaF","lvec","ffbase","lumberjack")

pal <- brewer.pal(3,"Dark2")

col <- c(rep(pal[1],7),rep(pal[2],5),rep(pal[3],4))

library(wordcloud)
set.seed(3)
fr <- runif(length(pkg))
i <- order(fr, decreasing = TRUE)
pdf("talk/fig/wordcloud.pdf")
par(mar=rep(0,4))
wordcloud(pkg[i], fr
          , min.freq=1e-10
          , colors = col[i]
          , ordered.colors=TRUE
          , random.order=FALSE)
legend("bottomleft",col=pal,legend=c("data cleaning"
                                     ,"visualisation","infrastructure")
       ,pch=15)
dev.off()
