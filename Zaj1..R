library("MCDA")

rm(list = ls())
# ----------------------------------------
# example 5
epsilon <- 0.01

additiveValueFunctionElicitation

# the numeric data table
numericDataTable <- rbind(
  c(30, 4.8, 249),
  c(29, 4.1, 349),
  c(24, 3.9, 319),
  c(27, 4.4, 299),
  c(26, 5.5, 319),
  c(22, 3.9, 149),
  c(37, 7.1, 499),
  c(22, 3.7, 249),
  c(42, 19.2, 2699),
  c(10, 11.5, 419),
  c(7, 2.4, 269),
  c(41, 7.3, 489),
  c(21, 2.9, 189),
  c(20, 4.1, 369),
  c(30, 4.7, 319),
  c(32, 2.9, 399),
  c(24, 5.5, 159),
  c(24, 5, 199),
  c(20, 4.3, 269),
  c(4, 2.3, 159)
  
)
rownames(numericDataTable) <- c(
  "HB PC 1030",
  "Ezetil E32M",
  "Ezetil E26M",
  "T30 Electra",
  "Ezetil E28M",
  "Ezetil C-C E24",
  "Ezetil E40M",
  "T25 Electra",
  "Ezetil EZC45",
  "Ezetil COOLCAN 10/12",
  "Sencor SCM 4700BL",
  "Gio'Style Shiver 40",
  "Gio'Style Bravo 25",
  "Sencor SCM 2025",
  "Gio'Style GS3+ 30",
  "Sencor SCM 3033RD",
  "HB PC 1010",
  "Sencor SCM 1025",
  "Ardes AR5I04",
  "Sencor SCM 3033BL")
colnames(numericDataTable) <- c(
  "StorageVolume",
  "Weight",
  "Price")

# ranks of the alternatives
alternativesRanks <- c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
names(alternativesRanks) <- row.names(numericDataTable)

# criteria to minimise or maximize
criteriaMinMax <- c("max","min","min")
names(criteriaMinMax) <- colnames(numericDataTable)
x <- additiveValueFunctionElicitation(numericDataTable,
                                    criteriaMinMax, epsilon,
                                    alternativesRanks = alternativesRanks)

print(x)
