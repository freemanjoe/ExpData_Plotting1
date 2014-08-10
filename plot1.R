#EDA_Elec <- read.csv(file.choose(), header = FALSE, na.strings = '?', skip = 66637, nrows = 2880)
library(data.table)
EDA_Elec <- fread(file.choose(), sep = ';', header = TRUE, na.strings = '?')
EDA_Elec_2122 <- EDA_Elec[66638:69517,]
GAP <- as.numeric(EDA_Elec_2122$Global_active_power)
png('./plot1.png', width = 480, height = 480)
hist(GAP, col = 'red', main = 'Global Active Power', xlab = 'Global Active Power (killowatts)')
dev.off()