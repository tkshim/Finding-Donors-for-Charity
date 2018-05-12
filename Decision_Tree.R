
#データのインポート
raw_data <- read.csv('census_new.csv')
#サマリー
summary(raw_data)


#
# 1. 相を確認
#

R <- cor(raw_data)
library(corrplot)
corrplot(R, method = 'circle')
corrplot(R, method = 'shade')
#corrplot(R, method = 'number')
#https://cran.r-project.org/web/packages/corrplot/vignettes/corrplot-intro.html


#
# 2. 決定木
#

#ライブラリを読み込む
library('rpart')
#データを抽出
d1.rp<-rpart(income~.,raw_data)
#決定木を描写
plot(d1.rp,uniform=T,margin=0.2)
#テキストを付与
text(d1.rp,uniform=T,use.n=T,all=F)
