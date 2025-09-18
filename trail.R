data0 <- read.csv("D:/NYU/Thesis/数据集/full data set/merged_data_egali_unemploy.csv")
dataschool3 <- read.csv("D:/NYU/Thesis/数据集/World_Development_Indicators_try1/WDtry1.csv")
datavedemo0 <- readRDS("D:/NYU/Thesis/数据集/V-Dem-CY-FullOthers_R_v13/V-Dem-CY-Full+Others-v13.rds")
library(haven)
dataWS <- read_dta("D:/NYU/Thesis/数据集/WS/WSData.dta")
print(data0$country_name)
print(dataWS$country_name)
print(sort(unique(dataWS$country_name)))
print(sort(unique(data0$country_name)))
print(unique(data0$country_name))
# 假设dataWS是你的数据框
# 将 "Burma/Myanmar" 改成 "Myanmar"
dataWS$country_name[dataWS$country_name == "Burma/Myanmar"] <- "Myanmar"

# 将 "United States of America" 改成 "United States"
dataWS$country_name[dataWS$country_name == "United States of America"] <- "United States"
# 假设dataWS和data0是你的两个数据框


# 将 "Vietnam" 改成 "Viet Nam"
dataWS$country_name[dataWS$country_name == "Vietnam"] <- "Viet Nam"
# 假设dataWS和data0是你的两个数据框
# 合并数据集
merged_data0225 <- merge(dataWS, data0, by = c("country_name", "year"), all = TRUE)
colnames(merged_data0225)
# 读取RDS文件
vedemo <- readRDS("D:/NYU/Thesis/数据集/V-Dem-CY-FullOthers_R_v13/V-Dem-CY-Full+Others-v13.rds")

