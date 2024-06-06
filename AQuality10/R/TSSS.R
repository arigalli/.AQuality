TSSS <-
function (sample,data,conflevel=0.95,pchdata=19,coldata='green',cexdata=0.5,pchsample=19,colsample='red',cexsample=3,xaxis='TOTAL SOLUBLE SOLIDS', yaxis='MASS SUMMATION',title=paste('Sample ',as.character(sample)),linetyprediction=2,linewidthprediction=1,linecolorprediction=5) {
position<-which(data[,1]==as.character(sample))
nrowdata<-nrow(data)
ncoldata<- ncol(data)
for(i in 1:nrowdata){
data[i,(ncoldata+1)]<-sum(data[i,c(3:ncoldata)],na.rm=TRUE)
}
datas<-subset(data,data[,2]!='NA' & data[,ncoldata+1]!='NA') 
lmsumatoriamasas<-lm(datas[,ncoldata+1]~datas[,2]-1) 
predictsumatoriamasas<-as.data.frame(predict(lmsumatoriamasas,datas,interval = "prediction",level=conflevel)) 
plot(datas[,2],datas[,(ncoldata+1)],pch=pchdata,col=coldata,cex=cexdata,xlab=xaxis, ylab=yaxis,main=title) 
lines(spline(datas[,2],predictsumatoriamasas[,3]),lty=linetyprediction,col=linecolorprediction,lwd=linewidthprediction) 
lines(spline(datas[,2],predictsumatoriamasas[,2]),lty=linetyprediction,col=linecolorprediction,lwd=linewidthprediction) 
points(data[position,2],data[position,ncoldata+1],pch=pchsample,col=colsample,cex=cexsample) 
}
