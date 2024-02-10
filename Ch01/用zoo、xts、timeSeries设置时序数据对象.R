intc=read.table(file="intc.csv",header=TRUE,sep=",")               # 读入数据
head(intc,3); tail(intc,3)
class(intc)
library(zoo)
intc.z=zoo(x=intc[,"Adj.Close"],order.by=as.Date(intc[,"Date"]))   # 转换成zoo类型
class(intc.z)
head(intc.z);tail(intc.z)
class(coredata(intc.z))
class(index(intc.z))
plot(intc.z,main="Intel Stock Price 1980-03 to 2016-02",ylab="$")
library(xts)
intc.x <- xts(x=intc[,"Adj.Close"],order.by=as.Date(intc[,"Date"]))  # 转换成xts类型
colnames(intc.x)="Adj.Close"
head(intc.x); tail(intc.x)
class(intc.x)
library(timeSeries)
intc.ts=timeSeries(intc)            # 转成timeSeries格式
intc.ts=intc.ts[,c("Date","Adj.Close")]
head(intc.ts); tail(intc.ts)
class(intc.ts)
data(Tbrate,package="Ecdat") 
class(Tbrate)                       # 时间序列ts，多变量时序mts
window(Tbrate,start=start(Tbrate),end=c(1950,4))
tsp(Tbrate)
plot(Tbrate)
ts.plot(Tbrate,col=2:4)
legend(x="topleft",legend=c("t-bill rate","log GDP","inflation"),
       lty=1,col=2:4,bty="n")
Tbrate.z=zoo(Tbrate,frequency =4)   # 将ts转换为zoo
