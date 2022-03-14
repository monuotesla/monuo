# monuo
Code availability
install.packages("randomForest")
library(randomForest) 

#演示时所创建的随机数值
set.seed(420) 
num.samples <- 100
weight <- sort(rnorm(n=num.samples, mean=172, sd=29))
obese <- ifelse(test=(runif(n=num.samples) < (rank(weight)/num.samples)), 
                yes=1, no=0)
weight
obese

#从联合出的表A中抽取出所需要的值

ASD=A$fam
PRS=ab$lda

##对数据拟合logistic回归曲线
qwe=qwe %>% mutate(newdmis = 10*dmis*dmis)
plot(x=ab$lda, y=ab$Phenotype)
glm.fit=glm(x ~ y, family=binomial)
lines(PRS, glm.fit$fitted.values)


ASD
A$fam
myMergedOut$fam=2

#########使用pROC包绘制ROC和计算AUC

roc(ASD, glm.fit$fitted.values, plot=TRUE)
par(pty = "s") 
roc(ASD, glm.fit$fitted.values, plot=TRUE, legacy.axes=TRUE)
roc(ASD, glm.fit$fitted.values, plot=TRUE, legacy.axes=TRUE, percent=TRUE, xlab="False Positive Percentage", ylab="True Postive Percentage")
roc( all3$fam, 
   all3$prse,
    plot=TRUE, 
    percent=TRUE, 
    xlab="False Positive Percentage", 
    ylab="True Postive Percentage", 
    col="#377eb8", 
    print.auc=TRUE,    
    lwd=4)

a1 <- as.numeric(CONTROL$`lofprs`)
a2 <- as.numeric(CASE$`lofprs`)

hist(a1, col = rgb(1,0,0,0.2), freq = F,ylim = c(0,0.1))
lines(density(a1),col = "red")

hist(a2, col = rgb(0,1,0,0.2), freq = F, add = T)
lines(density(a2),col = "blue")

 


###############################
full_join(ab,abcde,by )
##寻找ROC曲线中的最佳界值
roc.info <- roc(ASD, 
                glm.fit$fitted.values, 
                legacy.axes=TRUE)
str(roc.info)
roc.df <- data.frame(
  tpp=roc.info$sensitivities*100, 
  fpp=(1 - roc.info$specificities)*100, 
  thresholds=roc.info$thresholds) 
head(roc.df)
tail(roc.df)
roc.df

##使用pROC包绘制ROC和计算AUC
roc(ASD, 
    glm.fit$fitted.values, 
    plot=TRUE, 
    legacy.axes=TRUE, 
    percent=FALSE, 
    xlab="False Positive Percentage", 
    ylab="True Postive Percentage", 
    col="#377eb8", 
    lwd=2, 
    print.auc=TRUE)

rf.model <- randomForest(factor(ASD) ~ weight)
roc(ASD, 
    rf.model$votes[,1],  #提取随机森林模型中对应的预测指标
    plot=TRUE, 
    legacy.axes=TRUE, 
    percent=TRUE, 
    xlab="False Positive Percentage", 
    ylab="True Postive Percentage", 
    col="#4daf4a", 
    lwd=4, 
    print.auc=TRUE)


roc(ASD, 
    glm.fit$fitted.values, 
    plot=TRUE, 
    legacy.axes=TRUE, 
    percent=TRUE, 
    xlab="False Positive Percentage", 
    ylab="True Postive Percentage", col="#377eb8", lwd=4, print.auc=TRUE)

plot.roc(ASD, 
         rf.model$votes[,1], 
         percent=TRUE, 
         col="#4daf4a", 
         lwd=4, 
         print.auc=TRUE, 
         add=TRUE, 
         print.auc.y=40)

legend("bottomright", 
       legend=c("Logisitic Regression", "Random Forest"), 
       col=c("#377eb8", "#4daf4a"), 
       lwd=4)


rename("工作簿1","1")

install.packages("tidyverse")
library(tidyverse)
A<-("工作簿1")
A

