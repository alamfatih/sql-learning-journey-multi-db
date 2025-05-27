# ☕ Practical Task 2: Coffee Sales Performance Analysis 🚀

Selamat datang di repositori `Practical Task 2`! Proyek ini mendalami analisis data penjualan kopi dari sebuah rantai toko, mengungkap wawasan berharga tentang performa produk, pendapatan toko, dan pola transaksi. Dengan menggunakan SQL, saya menjelajahi dataset ini untuk mengidentifikasi produk terlaris, menganalisis fluktuasi harga, serta memahami perilaku pelanggan dan toko.

Dataset ini merupakan bagian dari latihan di kursus masterclass SQL, dan analisisnya dilakukan di PostgreSQL.

---

## ✨ Apa yang Akan Anda Temukan di Sini?

Repositori ini berisi serangkaian tugas analisis SQL yang terstruktur, mencakup berbagai konsep penting dalam database. Setiap tugas dirancang untuk memecahkan masalah bisnis atau analitis tertentu, dan hasilnya disajikan dengan jelas.

### 🎯 Objective & Key Learnings:

* **Analisis Penjualan & Kuantitas:** Menggunakan fungsi agregat seperti `SUM()` dan `COUNT()` bersama `GROUP BY` untuk mengidentifikasi produk terlaris dan volume transaksi secara keseluruhan.
* **Perhitungan Pendapatan (Revenue):** Menerapkan operasi aritmatika (`*`) dan fungsi agregat `SUM()` untuk menghitung total pendapatan berdasarkan kuantitas dan harga unit per transaksi, per toko, atau per kategori.
* **Pemfilteran Data Berbasis Waktu:** Memanfaatkan klausa `WHERE` dengan kondisi `BETWEEN` untuk rentang tanggal dan operator `<` untuk memfilter transaksi berdasarkan waktu tertentu (misalnya, sebelum jam 12 PM atau dalam rentang jam sibuk).
* **Analisis Pola Waktu (Jam Sibuk):** Menggunakan `CASE WHEN` dalam fungsi agregat (`AVG()`) untuk menghitung rata-rata pendapatan secara kondisional, membedakan antara jam sibuk dan non-jam sibuk.
* **Identifikasi Fluktuasi & Anomali:** Menerapkan fungsi `MAX()`, `MIN()`, dan `ABS()` untuk mengukur fluktuasi harga produk dan mengidentifikasi hari-hari dengan penyimpangan kuantitas transaksi terbesar dari rata-rata.
* **Filter Agregat Lanjutan:** Memanfaatkan klausa `HAVING` untuk menyaring grup berdasarkan kondisi agregat, seperti rata-rata harga unit di atas ambang batas tertentu atau produk yang terjual di setiap toko.
* **Penggunaan Subkueri Kompleks:** Menerapkan subkueri dalam klausa `FROM` (derived tables) dan dalam klausa `HAVING` untuk melakukan perhitungan bertingkat, seperti menghitung rata-rata total dan kemudian mengidentifikasi deviasi, atau menemukan nilai agregat maksimum di antara grup.
* **Fungsi Window:** Menggunakan fungsi `AVG() OVER ()` untuk menghitung rata-rata keseluruhan yang tidak terpengaruh oleh pengelompokan `GROUP BY`, memungkinkan perbandingan setiap baris dengan rata-rata global.
* **Pencarian Nilai Unik:** Memanfaatkan `DISTINCT` untuk mendapatkan daftar unik dari tipe produk atau lokasi toko.
* **Optimasi Kueri (LIMIT & ORDER BY):** Menggunakan `LIMIT` dan `ORDER BY` untuk mendapatkan hasil teratas atau menyoroti tren paling signifikan.

---

## 🔍 Detail Tugas Analisis:

Berikut adalah daftar pertanyaan kunci yang dieksplorasi dalam proyek ini, menunjukkan kemampuan saya dalam menerjemahkan pertanyaan bisnis ke dalam kueri SQL yang efektif. Anda dapat menemukan solusi SQL untuk setiap tugas dalam file terpisah dengan format `xx_nama_tugas.sql`.

1.  **Produk Terlaris per Kategori:** Mengambil 5 produk yang paling sering terjual berdasarkan kategori produk.
2.  **Pendapatan Total Toko (Januari 2023):** Menghitung total pendapatan yang dihasilkan oleh setiap toko pada bulan Januari 2023.
3.  **Tipe Produk Unik di 'Lower Manhattan':** Mendaftar tipe produk unik yang terjual di toko yang berlokasi di 'Lower Manhattan'.
4.  **Jumlah Transaksi Sebelum Siang:** Menghitung total jumlah transaksi yang terjadi sebelum jam 12:00 PM pada hari apa pun.
5.  **Pendapatan Rata-rata per Kategori (Jam Sibuk & Non-Sibuk):** Mencari rata-rata pendapatan per transaksi untuk setiap kategori produk selama jam sibuk (7 AM - 9 AM) dan jam non-sibuk untuk setiap toko.
6.  **Produk dengan Fluktuasi Harga Terbesar:** Mengambil produk dengan fluktuasi harga terbesar (perbedaan terbesar antara harga tertinggi dan terendah) di seluruh transaksi.
7.  **Produk Terjual di Setiap Toko:** Mendaftar semua produk yang terjual di setiap toko setidaknya satu kali.
8.  **Hari dengan Deviasi Kuantitas Transaksi Terbesar:** Mengidentifikasi 5 hari teratas di mana total kuantitas transaksi paling menyimpang dari rata-rata kuantitas transaksi harian.
9.  **Lokasi Toko & Pendapatan (Rata-rata Harga Unit > $2.50):** Mengambil lokasi toko dan total pendapatan untuk setiap toko di mana rata-rata harga unit lebih besar dari $2.50.
10. **Produk dengan Kuantitas Penjualan Rata-rata Tertinggi per Toko:** Mengidentifikasi produk yang memiliki rata-rata kuantitas penjualan per transaksi tertinggi di setiap toko.

---

## 🛠️ Tools & Technologies:

* **SQL (PostgreSQL):** Dialek SQL utama yang digunakan untuk kueri.
* **Dataset:** Dataset yang digunakan untuk analisis dapat ditemukan di dalam folder `data/` di repositori ini.

---

## 🚀 Mari Jelajahi Kodenya!

Setiap tugas analisis diimplementasikan dalam file SQL terpisah, dengan komentar yang jelas untuk menjelaskan logika di balik setiap kueri. Anda dapat menemukan file-file SQL ini di dalam repositori ini, diorganisir dengan rapi di dalam folder `queries/`.

Jangan ragu untuk menjelajahi, memberikan saran, atau bahkan menggunakannya sebagai referensi untuk proyek Anda sendiri!
