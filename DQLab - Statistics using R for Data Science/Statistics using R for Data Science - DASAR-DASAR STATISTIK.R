# CHAPTER 1: DASAR-DASAR STATISTIK
#Membaca dataset dengan read.csv dan dimasukkan ke variable data_intro
data_intro <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_intro.csv", sep=";")
data_intro

#Membaca dataset dengan read.csv dan dimasukkan ke variable data_intro
data_intro <- read.csv("https://storage.googleapis.com/dqlab-dataset/data_intro.csv",sep=";")
str(data_intro)

## mengubah data menjadi karakter karena tidak dilakukan analisis statistik pada variabel ID Pelanggan dan nama
data_intro$ID.Pelanggan <- as.character(data_intro$ID.Pelanggan)
data_intro$Nama <- as.character(data_intro$Nama)

## melihat apakah sudah berhasil dalam mengubah variabel tersebut
str(data_intro$ID.Pelanggan)
str(data_intro$Nama)

## Mengubah data menjadi factor untuk membedakan data kualitatif dengan menggunakan functon as.factor
data_intro$Jenis.Kelamin <- as.factor(data_intro$Jenis.Kelamin)
data_intro$Produk <- as.factor(data_intro$Produk)
data_intro$Tingkat.Kepuasan <- as.factor(data_intro$Tingkat.Kepuasan)

## Melihat apakah sudah berhasil dalam mengubah variabel tersebut dengan menggunakan function str
str(data_intro$Jenis.Kelamin)
str(data_intro$Produk)
str(data_intro$Tingkat.Kepuasan)

# melihat data/ pemanggilan data
data_intro 
# melihat tipe data
str(data_intro)

install.packages("pracma")
library(pracma)
## carilah modus untuk kolom Produk pada variable data_intro
Mode(data_intro$Produk)
## carilah modus untuk kolom Tingkat.Kepuasan pada variable data_intro
Mode(data_intro$Tingkat.Kepuasan)

## carilah median untuk kolom Pendapatan dari variable data_intro
median(data_intro$Pendapatan) 
## carilah median untuk  kolom Harga dari variable data_intro
median(data_intro$Harga) 
## carilah median untuk kolom Jumlah dari variable data_intro
median(data_intro$Jumlah) 
## carilah median untuk  kolom Total dari variable data_intro
median(data_intro$Total) 

## carilah mean untuk kolom Pendapatan pada variable data_intro
mean(data_intro$Pendapatan)
## carilah mean untuk kolom Harga pada variable data_intro
mean(data_intro$Harga)
## carilah mean untuk kolom Jumlah pada variable data_intro
mean(data_intro$Jumlah)
## carilah mean untuk kolom Total pada variable data_intro
mean(data_intro$Total)

## carilah range atau jangkauan untuk kolom Pendapatan pada variable data_intro
max(data_intro$Pendapatan) - min(data_intro$Pendapatan)

## carilah nilai sebaran data varians
var(data_intro$Pendapatan)

## Carilah simpangan baku untuk kolom Pendapatan dari variable data_intro
sd(data_intro$Pendapatan)