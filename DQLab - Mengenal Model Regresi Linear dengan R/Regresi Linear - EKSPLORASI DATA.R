# CHAPTER 2: EKSPLORASI DATA
# Pengaruh Konsumsi Permen Terhadap Kunjungan Rumah Sakit
penjualan_permen = read.csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
kunjungan_dokter = read.csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", header = TRUE, sep = "\t")

print(penjualan_permen)
print(kunjungan_dokter)

# Merge Data
data_gabungan = merge(kunjungan_dokter , penjualan_permen, by.x=c("Bulan","Tahun"), by.y=c("Bulan","Tahun"), sort=FALSE)
data_gabungan

# Data Eksplorasi: Kunjungan ke Dokter Gigi vs Perilaku Konsumsi
summary(data_gabungan$tingkat.kunjungan.ke.dokter.gigi)
summary(data_gabungan$penjualan.permen)
summary(data_gabungan$penjualan.sereal)
summary(data_gabungan$penjualan.buah.pisang)

# Melakukan Eksplorasi Data Dengan Visualisasi
#Melakukan explorasi data kunjungan dokter dengan penjualan permen
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.permen,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan permen",
     main = "Kunjungan dokter dengan penjualan permen",     
     col = "blue")

#Melakukan explorasi data kunjungan dokter dengan penjualan sereal
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.sereal,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan sereal",
     main = "Kunjungan dokter dengan penjualan sereal",     
     col = "blue")

#Melakukan explorasi data kunjungan dokter dengan penjualan buah pisang
plot(data_gabungan$tingkat.kunjungan.ke.dokter.gigi, data_gabungan$penjualan.buah.pisang,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan buah pisang",
     main = "Kunjungan dokter dengan penjualan buah pisang",
     col = "blue")

# Delay effect
library (dplyr)
data_delayed_effect = data.frame(
  month = data_gabungan$Bulan,
  year = data_gabungan$Tahun,
  kunjungan_dokter = data_gabungan$tingkat.kunjungan.ke.dokter.gigi,
  penjualan_permen = data_gabungan$penjualan.permen,
  penjualan_permen_1 = lag(data_gabungan$penjualan.permen),
  penjualan_permen_2 = lag(data_gabungan$penjualan.permen,2),
  penjualan_permen_3 = lag(data_gabungan$penjualan.permen,3),
  penjualan_permen_4 = lag(data_gabungan$penjualan.permen,4),
  penjualan_permen_5 = lag(data_gabungan$penjualan.permen,5),
  penjualan_permen_6 = lag(data_gabungan$penjualan.permen,6)
)
data_delayed_effect

# Scatterplot
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Permen",
     main = "Kunjungan dokter dengan penjualan permen", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_1,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Permen",
     main = "Kunjungan dokter dengan penjualan permen (delay 1 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_2,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Permen",
     main = "Kunjungan dokter dengan penjualan permen (delay 2 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_3,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Permen",
     main = "Kunjungan dokter dengan penjualan permen (delay 3 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_4,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Permen",
     main = "Kunjungan dokter dengan penjualan permen (delay 4 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_5,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Permen",
     main = "Kunjungan dokter dengan penjualan permen (delay 5 bulan)", 
     col = "blue")

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_permen_6,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Permen",
     main = "Kunjungan dokter dengan penjualan permen (delay 6 bulan)", 
     col = "blue")

