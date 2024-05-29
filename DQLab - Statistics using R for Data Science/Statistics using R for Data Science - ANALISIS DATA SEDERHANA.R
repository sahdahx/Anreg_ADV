# CHAPTER 2: ANALISIS DATA SEDERHANA
# Analisis Deskriptif Menggunakan Nilai Statistik
## carilah summary data dari data_intro
summary(data_intro)

# Analisis Deskriptif Menggunakan Visualisasi
## carilah sebaran data dari Jenis Kelamin
plot(data_intro$Jenis.Kelamin)
## carilah sebaran data dari Pendapatan
hist(data_intro$Pendapatan)
## carilah sebaran data dari Produk
plot(data_intro$Produk)
## carilah sebaran data dari Harga
hist(data_intro$Harga)
## carilah sebaran data dari Jumlah
hist(data_intro$Jumlah)
## carilah sebaran data dari Total
hist(data_intro$Total)
## carilah sebaran data dari Tingkat Kepuasan
plot(data_intro$Tingkat.Kepuasan)

# Scatter Plot
plot(data_intro$Pendapatan, data_intro$Total)

# Hubungan Pendapatan dengan Total Belanja dengan cor.test
cor.test(data_intro$Pendapatan, data_intro$Total)

# Hubungan Produk dengan Tingkat Kepuasan dengan chisq.test
table(data_intro$Produk, data_intro$Tingkat.Kepuasan)
## Analisis bagaimana hubungan jenis produk dengan tingkat kepuasan mengunakan uji korelasi
chisq.test(table(data_intro$Produk,data_intro$Tingkat.Kepuasan))

# Hubungan Jenis Kelamin dengan Total Belanja dengan t.test
## carilah boxplot antara variabel jenis kelamin dengan total belanja
boxplot(Total~Jenis.Kelamin, data = data_intro)
## analisis bagaimana hubungan jenis kelamin dengan total belanja mengunakan uji statistik t-test
t.test(Total~Jenis.Kelamin, data = data_intro)
