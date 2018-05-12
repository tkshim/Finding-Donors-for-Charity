
#データのインポート
raw_data <- read.csv('census_new.csv')

#相関を確認
cor(raw_data)

#サマリー
summary(raw_data)
#ライブラリを読み込む
library('rpart')

#データを抽出
d1.rp<-rpart(income~.,raw_data)

#決定木を描写
plot(d1.rp,uniform=T,margin=0.2)

#テキストを付与
text(d1.rp,uniform=T,use.n=T,all=F)

