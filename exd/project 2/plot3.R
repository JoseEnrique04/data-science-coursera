library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
NEI <- subset(NEI, fips == 24510)
x<-aggregate(NEI$Emissions,by=list(year=NEI$year,type=NEI$type),FUN=sum)
colnames(x)<-c("year","type","Emissions")
qplot(year,Emissions,facets=.~type,geom=c("line"),data=x,color=type,main="Emission of PM(2.5) per type-Baltimore city")
ggsave(filename="plot3.png")






