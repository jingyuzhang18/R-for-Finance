Sysdate <- Sys.Date()     # 系统当前日期
class(Sysdate)            # 日期型变量
Sysdate
Systime <- Sys.time()     # 系统当前时间
class(Systime)            # "POSIXct"和"POSIXt"是两种精准到秒的时间变量
Systime
p <- as.POSIXlt(Systime)  # 提取日期中的各个组成部分信息
class(p); mode(p)
p
p$year+1900   # p$year 自1900年以来的年份
p$mon+1       # p$mon  表示0-11月
p$mday        # p$mday 该月的第几天
p$yday+1      # p$yday 该年的第几天，0-365天，元旦当天是第0天
p$wday        # p$wday 对应周几，0-6，周日为0，其他时间和我们日常习惯一致
# 用字符和数字生成日期对象
t <- as.Date("2014/4/17",tz="CST") # tz为时区，CST为北京时间
class(t)
t
t <- ISOdate(2014,4,17)
class(t)                             # ISOdate()函数得到的是一个POSIXct对象
t <- ISOdatetime(2014,4,17,15,28,48) # 继续加入小时、分钟、秒数信息

