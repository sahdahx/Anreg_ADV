# CHAPTER 2: Pengolahan dan Manipulasi Data String
# Mengimport dataset
data <- read.table(
  file = "https://storage.googleapis.com/dqlab-dataset/datalahir_teks_dqlab.txt",
  header = FALSE, 
  sep = "\n", 
  na.strings=c("NA", "N/A", " "), 
  col.names = 'data_list',
  skip = 1)
data

# Function strsplit()
#Menampilkan 5 data teratas yang sudah di-load ke dalam workspace
head(data)

#Memisahkan data menggunakan strsplit
data <- strsplit(data$data_list,split = "|||", fixed = TRUE)

#Merubah data menjadid dataframe
df <- data.frame(matrix(unlist(data), nrow=length(data), byrow=TRUE))

#Memberikan nama pada setiap kolom
colnames(df) <- c('Nama','Tempat_Lahir', 'Tanggal_Lahir', 'Provinsi')

#Tampilkan 5 baris pertama dari df
head(df,5)

# Function paste()
#Tambahkan kolom baru yang berisi tempat lahir dan provinsi
df$kota_provinsi <- paste(df$Tempat_Lahir,",",df$Provinsi)

#Tampilkan 5 data teratas dari df
head(df,5)

# Penerapan Function Lainnya untuk Mengolah Data String
data_teks <- "Ayo belajar data di DQLab untuk memulai karir di bidang data"

#penggunaan function nchar()
nchar(data_teks)

#penggunaan substr()
substr(data_teks, 21, 25)

#pengunaan sub()
sub("data", "data science", data_teks)

#pengunaan gsub()
gsub("data", "data science", data_teks)

# Regex dan Function Grep
#Mencari Nama yang mengandung angka
name_with_num <- grep('\\d+',df$Nama)
name_with_num

#Menampilkan data Nama yang mengandung angka
df[name_with_num,]

#Menghapus karakter yang bukan termasuk alphabet
df$Nama <- gsub("[^A-Za-z]","",df$Nama)

# ______________________________________________________
# CHAPTER 3: MINI PROJECT
#Melakukan import file
data <- read.table(
  file = "https://storage.googleapis.com/dqlab-dataset/datalahir_teks_dqlab.txt",
  header = FALSE, 
  sep = "\n", 
  na.strings=c("NA","N/A",""), 
  col.names = 'data_list',
  skip = 1)

#Menampilkan 5 data teratas
head(data,5)

#Memisahkan data menggunakan strsplit
data <- strsplit(data$data_list,split = "|||", fixed = TRUE)

#Merubah data menjadid dataframe
df <- data.frame(matrix(unlist(data), nrow=length(data), byrow=TRUE))

#Memberikan nama pada setiap kolom
colnames(df) <- c('Nama','Tempat_Lahir', 'Tanggal_Lahir', 'Provinsi')

#Tampilkan 5 baris pertama dari df
head(df,5)

#Tambahkan kolom baru yang berisi tempat lahir dan provinsi
df$kota_provinsi <- paste(df$Tempat_Lahir,",",df$Provinsi)

#Tampilkan 5 data teratas dari df
head(df,5)

#Menghapus karakter yang bukan termasuk alphabet pada kolom Nama
df$Nama <- gsub("[^A-Za-z]","",df$Nama)

#Tampilkan isi dari df
df