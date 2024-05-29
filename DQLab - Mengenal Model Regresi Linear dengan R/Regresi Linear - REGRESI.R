# CHAPTER 3: REGRESI
# Model Regresi
penjualan_permen = read.csv("https://storage.googleapis.com/dqlab-dataset/tingkat_penjualan_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
kunjungan_dokter = read.csv("https://storage.googleapis.com/dqlab-dataset/kunjungan_dokter_gigi_kota_x_dqlab.tsv", header = TRUE, sep = "\t")
print(penjualan_permen)
print(kunjungan_dokter)

data_regresi = data.frame(
  month = data_delayed_effect$month,
  tahun = data_delayed_effect$year,
  kunjungan_dokter = data_delayed_effect$kunjungan_dokter, 
  penjualan_permen = data_delayed_effect$penjualan_permen_4)
#Mengeliminasi data NA
data_regresi = na.omit(data_regresi)
data_regresi
#Analisis Regresi
model = lm(kunjungan_dokter ~ penjualan_permen, data = data_regresi)
summary(model)

# Memprediksi Kunjungan Dokter Dengan Penjualan Permen
#Menggunakan metode predict untuk memprediksi kunjungan dokter
data_prediksi = data.frame(
  month = c(1, 2, 3, 4, 5),
  year = c(1998, 1998, 1998, 1998, 1998),
  penjualan_permen = c(345646, 454344, 346987, 209854, 254634)
)
predict(model, data_prediksi)