# Chapter 2: VECTOR, LIST, AND DATA FRAME
# Vector
# Ini adalah contoh vector untuk angka numerik dengan 3 data c(4, 5, 6)
c(4, 5, 6)
# Variable bernama angka dengan input berupa vector
angka = c(4, 5, 6)
# Tampilkan isi variable angka dengan fungsi print
print(angka)

# Deretan Nilai dengan Operator ":" (Titik Dua)
angka1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
print(angka1)
angka2 <- c(1:10)
print(angka2)

# Variable nama_mahasiswa dengan input character
nama_mahasiswa = c("Amira", "Budi", "Charlie")
print(nama_mahasiswa)

# Index dan Accessor pada Vector
# Buat vector variable bernama angka yang isinya 20 s/d 30
angka <- c(20:30)
print(angka)
# Tampilkan isi variable angka pada posisi ke 3
print(angka[3])
# Tampilkan isi variable angka pada posisi ke 5 gunakan kurung siku ganda
print(angka[5])
# Tampilkan isi variable angka pada posisi ke 4 s/d 6
print(angka[4:6])
# Buat vector teks dengan nama kode_prodi yang diisi sesuai petunjuk soal
kode_prodi = c("DKV", "ILKOM", "ICT")
# Tampilkan isi indeks ketiga dari kode_prodi
print(kode_prodi[3])

# Named Vector
#Membuat named vector dengan nama nilai
nilai <- c(statistik = 89, fisika = 95, ilmukomunikasi = 100)
#Menampilkan isi variable nilai
print(nilai)
#Menampilkan isi dengan nama fisika
print(nilai["fisika"])
#Buat variable profil sesuai permintaan soal
profil <- c(nama = "Budi", tempat_tinggal = "Jakarta", tingkat_pendidikan = "S1")
#Tampilkan variable profil
print(profil)

# List
list_random <- list(2, "Budi", 4)
# Menampilkan isi list
list_random 
# List disimpan dalam variable dengan nama dati2
dati2 <- list(nama = "Denpasar", propinsi = "Bali")
# Menampilkan isi list dati2
dati2 
# Buat variable kota sesuai permintaan soal
kota <- list(nama_kota = "Makassar", propinsi = "Sulawesi Selatan", luas_km2 = 199.3)
# Tampilkan isi variable list kota
kota

# List Index
# Membentuk list dengan 2 angka dan 1 character
list_saya <- list(2, "Budi", 4)
# Menampilkan index kedua dengan aksesor kurung siku tunggal 
list_saya[2]
# Menampilkan index kedua dengan aksesor kurung siku ganda
list_saya[[2]]
# Menampilkan index kedua s/d ketiga
list_saya[2:3]
list_satu = list(1, "Online", TRUE)
list_satu[1]

# Data Frame
#Membuat dua variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
#Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa)
#Melihat isi data frame
info_mahasiswa
#Buat vector baru sebagai representasi akreditasi
akreditasi <- c("A","A","B","A","A")
#Buat data frame dari ketiga vector di atas
info_mahasiswa = data.frame(fakultas, akreditasi)
info_mahasiswa

# Cara Akses Data Frame
#Membuat tiga variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)
akreditasi <- c("A","A","B","A","A")
#Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
#Menampilkan kolom jumlah_mahasiswa
info_mahasiswa$jumlah_mahasiswa
#Menampilkan kolom fakultas
info_mahasiswa$fakultas
