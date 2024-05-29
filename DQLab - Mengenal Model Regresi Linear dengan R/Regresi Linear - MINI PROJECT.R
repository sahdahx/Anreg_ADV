# CHAPTER 4: MINI PROJECT
# 1. Import data penjualan sereal dan kunjungan dokter gigi
penjualan = read.csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
kunjungan_dokter= read.csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
print(penjualan)
print(kunjungan_dokter)

# 2. Menggabungkan dua dataset menggunakan R dan eliminasi kolom
merge(kunjungan_dokter, penjualan, by=c("Bulan","Tahun"))

data_gabungan = merge(kunjungan_dokter, penjualan, by.x=c("Bulan","Tahun"), by.y=c("Bulan","Tahun"),sort = FALSE)
data_gabungan

# 3. Meringkas data yang akan digunakan ke dalam datagabungan
datagabungan = data.frame(
  bulan = data_gabungan$Bulan,
  tahun = data_gabungan$Tahun,
  kunjungan_dokter = data_gabungan$tingkat.kunjungan.ke.dokter.gigi,
  penjualan_sereal = data_gabungan$penjualan.sereal)

datagabungan

#Menghitung summary datagabungan
summary(datagabungan)

# 4. Visualisasi datgabungan menggunakan scatter plot
plot(datagabungan$kunjungan_dokter, datagabungan$penjualan_sereal,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan Sereal",
     main = "Kunjungan dokter dengan penjualan sereal",
     col = "blue")

## Delayed period data.
## Berdasarkan scatter plot dari efek delayed period, dapat dilihat bahwa delayed period selama 4 bulan merupakan
## variabel dengan hubungan yang cukup kuat dengan kunjungan dokter.
library (dplyr)
data_delayed_effect = data.frame(
  bulan = datagabungan$bulan,
  tahun = datagabungan$tahun,
  kunjungan_dokter = datagabungan$kunjungan_dokter,
  penjualan_sereal = datagabungan$penjualan_sereal,
  penjualan_sereal_1 = lag(datagabungan$penjualan_sereal),
  penjualan_sereal_2 = lag(datagabungan$penjualan_sereal,2),
  penjualan_sereal_3 = lag(datagabungan$penjualan_sereal,3),
  penjualan_sereal_4 = lag(datagabungan$penjualan_sereal,4),
  penjualan_sereal_5 = lag(datagabungan$penjualan_sereal,5),
  penjualan_sereal_6 = lag(datagabungan$penjualan_sereal,6)
)
head(data_delayed_effect)

plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_1,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan sereal",
     main = "Kunjungan dokter dengan penjualan sereal (delay 1 bulan)",
     col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_2,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan sereal",
     main = "Kunjungan dokter dengan penjualan sereal (delay 2 bulan)",
     col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_3,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan sereal",
     main = "Kunjungan dokter dengan penjualan sereal (delay 3 bulan)",
     col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_4,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan sereal",
     main = "Kunjungan dokter dengan penjualan sereal (delay 4 bulan)",
     col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_5,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan sereal",
     main = "Kunjungan dokter dengan penjualan sereal (delay 5 bulan)",
     col = "blue")
plot(data_delayed_effect$kunjungan_dokter, data_delayed_effect$penjualan_sereal_6,
     pch = 19,
     xlab = "Kunjungan dokter",
     ylab = "Penjualan sereal",
     main = "Kunjungan dokter dengan penjualan sereal (delay 6 bulan)",
     col = "blue")

# 5. Analisis Regresi menggunakan R
data_regresi = data.frame(
  bulan = data_delayed_effect$bulan,
  tahun = data_delayed_effect$tahun,
  kunjungan_dokter = data_delayed_effect$kunjungan_dokter,
  penjualan_sereal = data_delayed_effect$penjualan_sereal_4)

# Mengeliminasi data NA
data_regresi = na.omit(data_regresi)

# Model regresi menggunakan R
model = lm(kunjungan_dokter ~ penjualan_sereal, data = data_regresi)
summary(model)

# KESIMPULAN
print("1. Hubungan antara penjualan permen dengan kunjungan ke dokter bersifat positif. Yang berarti bahwa ketika penjualan permen semakin meningkat, maka kunjungan ke dokter akan meningkat juga. Namun efek peningkatan kunjungan dokter ini akan terjadi dalam 4 bulan kedepan.")
print("2. Setiap ada kenaikan penjualan permen sebesar 100,000 maka akan meningkatkan kunjungan dokter sebesar 35.934 unit dalam 4 bulan kedepan.")
