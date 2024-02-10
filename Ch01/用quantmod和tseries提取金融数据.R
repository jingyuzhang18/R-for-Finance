library(quantmod)
args(getSymbols)     # 查看命令选项
getSymbols("^GSPC")  # S&P500，默认 scr="yahoo"
tail(GSPC,4)         # 查看最后4个数据
class(GSPC)          # 数据类型
class(index(GSPC))   # 日期类型
dim(GSPC)            # 数据行列数
colnames(GSPC)       # 指标名称
tail(Cl(GSPC),4)     
args(chartSeries)
## chartSeries(x, type = c("auto", "candlesticks", "matchsticks",
##     "bars", "line"), subset = NULL, show.grid = TRUE, name = NULL,
##     time.scale = NULL, log.scale = FALSE, TA = "addVo()", TAsep = ";",
##     line.type = "l", bar.type = "ohlc", theme = chartTheme("black"),
##     layout = NA, major.ticks = "auto", minor.ticks = TRUE, yrange = NULL,
##     plot = TRUE, up.col, dn.col, color.vol = TRUE, multi.col = FALSE, ...)
chartSeries(GSPC,subset="2018::2020",theme="white") # 背景为白色，但上涨为绿色、下跌为红色
whiteTheme <- chartTheme("white")                   # 在此基础上自定义作图模版
names(whiteTheme)
whiteTheme$bg.col <- "white"
whiteTheme$dn.col <- "lightgreen"                   # 下降为淡绿色
whiteTheme$up.col <- "pink"                         # 上涨为粉色
whiteTheme$border <- "lightgray"
x <- chartSeries(GSPC,subset="last 3 months",theme=whiteTheme,TA=NULL)
class(x)
# 选取不同时段作图
chartSeries(GSPC["2020"],theme=whiteTheme,name="S&P 500")
chartSeries(GSPC["2019/2020"],theme=whiteTheme,name="S&P 500")
chartSeries(GSPC["2019-08::2020-03"],theme=whiteTheme,name="S&P 500")
chartSeries(GSPC["20161109::"],theme=whiteTheme,name="S&P 500")
