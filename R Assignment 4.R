#These are the vectors of the 5 variables of the dataset provided.  

Freq <- c(0.6, 0.3, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 79, 205, 135, 176)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
finaldecision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)


#boxplot and hist of bloodp
bxplt_bldp <- boxplot(bloodp)
histogram_bldp <- hist(bloodp)


#boxplot of first and second md ratings
firstMD_rating_bxplt <- boxplot(first)
firstMD_rating_hist <- hist(first)
secondMD_rating_hist <- hist(second)
secondMD_rating_bxplt <- boxplot(second)

