# we can use the write.table command to export data, to many formats
?write.table

# save the file in our current working directory, name it
# "ExportFileName", and save as a .CSV file format
write.table(DataToExport, file="ExportedFileName.csv", sep="'")


R version 4.3.1 (2023-06-16 ucrt) -- "Beagle Scouts"
Copyright (C) 2023 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from D:/Belajar R/Aiplanet 1/.RData]

> View(data1)
> load("D:/Belajar R/Aiplanet 1/.RData")
> load("D:/Belajar R/Aiplanet 1/.RData")
> getwd()
[1] "D:/Belajar R/Aiplanet 1"
> setwd("D:/Belajar R/Aiplanet 1/Desktop/Project 1")
Error in setwd("D:/Belajar R/Aiplanet 1/Desktop/Project 1") : 
  cannot change working directory
> getwd()
[1] "D:/Belajar R/Aiplanet 1"
> help(read.csv)
> ?read.csv
> data1 <- read.csv(file.choose(), header=T)
> data1
pendapatan Pengeluaran total
1           2          10    NA
2           3          15    NA
3           4          20    NA
4           5          16    NA
5           6          22    NA
6           7          25    NA
7           8          15    NA
8           9          14    NA
9          10          10    NA
10         11          18    NA
11         12          12    NA
12         13          15    NA
13         14          15    NA
14         15          20    NA
15         21          25    NA
16         22          23    NA
17         23          16    NA
18         24           8    NA
19         25          15    NA
20         26           1    NA
> pengeluaran[1:5]
Error: object 'pengeluaran' not found
> # check
  > head(pendapatan)
Error: object 'pendapatan' not found
> data1
pendapatan Pengeluaran total
1           2          10    NA
2           3          15    NA
3           4          20    NA
4           5          16    NA
5           6          22    NA
6           7          25    NA
7           8          15    NA
8           9          14    NA
9          10          10    NA
10         11          18    NA
11         12          12    NA
12         13          15    NA
13         14          15    NA
14         15          20    NA
15         21          25    NA
16         22          23    NA
17         23          16    NA
18         24           8    NA
19         25          15    NA
20         26           1    NA
> names(tabel)
Error: object 'tabel' not found
> attach(data1)
> names(tabel)
Error: object 'tabel' not found
> names(data1)
[1] "pendapatan"  "Pengeluaran" "total"      
> head(data1)
pendapatan Pengeluaran total
1          2          10    NA
2          3          15    NA
3          4          20    NA
4          5          16    NA
5          6          22    NA
6          7          25    NA
> data1[1:3]
pendapatan Pengeluaran total
1           2          10    NA
2           3          15    NA
3           4          20    NA
4           5          16    NA
5           6          22    NA
6           7          25    NA
7           8          15    NA
8           9          14    NA
9          10          10    NA
10         11          18    NA
11         12          12    NA
12         13          15    NA
13         14          15    NA
14         15          20    NA
15         21          25    NA
16         22          23    NA
17         23          16    NA
18         24           8    NA
19         25          15    NA
20         26           1    NA
> pendapatan[1:3]
[1] 2 3 4
> temp <- pendapatan>10
> temp[1:4]
[1] FALSE FALSE FALSE FALSE
> temp <- pengeluaran<20
Error: object 'pengeluaran' not found
> temp[1:20]
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[10]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[19]  TRUE  TRUE
> Pengeluaran[1:5]
[1] 10 15 20 16 22
> temp <- Pengeluaran<20
> temp[1:20]
[1]  TRUE  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE
[10]  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE
[19]  TRUE  TRUE
> data1[1:4, ]
pendapatan Pengeluaran total
1          2          10    NA
2          3          15    NA
3          4          20    NA
4          5          16    NA
> asada <- pendapatan==3 == "yes"
Error: unexpected '==' in "asada <- pendapatan==3 =="
> asada <- pendapatan==3 & Pengeluaran=="yes"
> asada[1:3]
[1] FALSE FALSE FALSE
> MoreData <- cbind(data1, asada)
> MoreData[1:4, ]
pendapatan Pengeluaran total asada
1          2          10    NA FALSE
2          3          15    NA FALSE
3          4          20    NA FALSE
4          5          16    NA FALSE
> getwd()
[1] "D:/Belajar R/Aiplanet 1"
> setwd("D:/Belajar R/Aiplanet 1/Desktop/Project 1")
Error in setwd("D:/Belajar R/Aiplanet 1/Desktop/Project 1") : 
  cannot change working directory
> setwd("~/Desktop/data1")
Error in setwd("~/Desktop/data1") : cannot change working directory
> setwd(Aiplanet 1)
Error: unexpected numeric constant in "setwd(Aiplanet 1"
> setwd("D:/Belajar R/Aiplanet 1")
> 
  > Meanpendapatan <- mean(pendapatan)
> 
  > x <- c(1,2,3,4,5)
> 
  > y <- 12
> 
  > z = summary(data1)
> z
pendapatan     Pengeluaran     total        
Min.   : 2.00   Min.   : 1.00   Mode:logical  
1st Qu.: 6.75   1st Qu.:13.50   NA's:20       
 Median :11.50   Median :15.00                 
 Mean   :13.00   Mean   :15.75                 
 3rd Qu.:21.25   3rd Qu.:20.00                 
 Max.   :26.00   Max.   :25.00                 
> x
[1] 1 2 3 4 5
> 
> > save.image("FirstProject.Rdata")
Error: unexpected '>' in ">"
> save.image("FirstProject.Rdata")
> 
> rm(list = ls())
> 
> q()
Save workspace image to D:/Belajar R/Aiplanet 1/.RData? [y/n]: 
