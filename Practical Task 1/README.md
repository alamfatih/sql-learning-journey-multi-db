# 🚀 Practical Task 1: Unlocking Insights from Student Performance Data 📈

Selamat datang di repositori `Practical Task 1`! Proyek ini mendokumentasikan perjalanan saya dalam menganalisis dataset performa siswa menggunakan kekuatan SQL. Dari perhitungan rata-rata hingga pemodelan data kompleks, setiap kueri dirancang untuk mengungkap wawasan berharga yang dapat membantu memahami dan mendukung perjalanan akademis siswa.

Dataset yang digunakan berasal dari sebuah kursus masterclass SQL dan berfokus pada berbagai aspek data siswa, termasuk nilai akademik, aspirasi karir, dan data demografis lainnya. Proyek ini adalah bagian dari komitmen saya untuk menguasai SQL lintas berbagai platform database, yang telah saya capai dengan sertifikasi dari Udemy.

---

## ✨ Apa yang Akan Anda Temukan di Sini?

Repositori ini berisi serangkaian tugas analisis SQL yang terstruktur, mencakup berbagai konsep penting dalam database. Setiap tugas dirancang untuk memecahkan masalah bisnis atau analitis tertentu, dan hasilnya disajikan dengan jelas.

### 🎯 Objective & Key Learnings:

* **Analisis Rata-Rata & Pengelompokan Data:** Menggunakan fungsi agregat seperti `AVG()` dan `GROUP BY` untuk menemukan tren dan pola dalam performa siswa berdasarkan berbagai kategori.
* **Pemfilteran Lanjutan:** Menerapkan klausa `HAVING` dan subkueri (`WHERE EXISTS` atau `WHERE IN`) untuk menyaring hasil berdasarkan kondisi yang kompleks, seperti skor di atas rata-rata sekolah.
* **Fungsi Window (Ranking):** Menggunakan `RANK() OVER (PARTITION BY ... ORDER BY ...)` untuk memberikan peringkat siswa dalam sub-kelompok tertentu, memberikan gambaran kompetitif atau posisi relatif.
* **Manipulasi String & Numerik:** Memanfaatkan fungsi `CONCAT()` untuk menggabungkan data, serta `FLOOR()`, `CEIL()`, dan `ROUND()` untuk memformat skor dan melakukan perhitungan matematis.
* **Perhitungan Proporsi & Persentase:** Menerapkan perhitungan persentase (`::decimal` casting di PostgreSQL) untuk menganalisis kontribusi bagian terhadap keseluruhan, seperti persentase hari absen.
* **Logika Kondisional (`CASE WHEN`):** Menggunakan `CASE WHEN` untuk membuat kategori kustom dan melakukan perhitungan bersyarat, seperti menghitung jumlah mata pelajaran dengan nilai tinggi.
* **Pencocokan Pola:** Menerapkan operator `LIKE` atau `REGEXP` untuk menemukan pola spesifik dalam data teks (misalnya, email dengan domain tertentu).

---

## 🔍 Detail Tugas Analisis:

Berikut adalah daftar pertanyaan kunci yang dieksplorasi dalam proyek ini, menunjukkan kemampuan saya dalam menerjemahkan pertanyaan bisnis ke dalam kueri SQL yang efektif. Anda dapat menemukan solusi SQL untuk setiap tugas dalam file terpisah dengan format `xx_nama_tugas.sql`.

1.  **Analisis Aspirasi Karir & Matematika:** Menghitung rata-rata nilai matematika untuk setiap aspirasi karir dan mengurutkannya.
2.  **Performa Bahasa Inggris Berdasarkan Aspirasi:** Mengidentifikasi aspirasi karir dengan rata-rata nilai bahasa Inggris di atas 75.
3.  **Siswa Unggul Matematika:** Menemukan siswa yang nilai matematikanya melebihi rata-rata sekolah.
4.  **Peringkat Fisika dalam Aspirasi:** Meranking siswa berdasarkan nilai fisika di dalam kategori aspirasi karir mereka masing-masing.
5.  **Data Kontak Siswa:** Membuat nama lengkap siswa dan menemukan email yang mengandung string "academy".
6.  **Statistik Nilai Kimia:** Menghitung nilai kimia terendah (FLOOR), tertinggi (CEIL), dan rata-rata (ROUND) untuk setiap gender.
7.  **Aspirasi Karir dengan Sejarah Kuat:** Mengidentifikasi aspirasi karir dengan rata-rata nilai sejarah di atas 85 dan dengan jumlah siswa yang signifikan.
8.  **Siswa di Atas Rata-rata Biologi & Kimia:** Menemukan siswa yang nilai biologi dan kimianya di atas rata-rata sekolah untuk mata pelajaran tersebut.
9.  **Persentase Ketidakhadiran Siswa:** Menghitung persentase hari absen setiap siswa relatif terhadap total hari absen semua siswa.
10. **Siswa dengan Banyak Nilai Tinggi:** Mengidentifikasi siswa yang memiliki skor di atas 80 di setidaknya tiga dari enam mata pelajaran utama (matematika, sejarah, fisika, kimia, biologi, dan bahasa Inggris).

---

## 🛠️ Tools & Technologies:

* **SQL (PostgreSQL):** Dialek SQL utama yang digunakan untuk kueri.
* **Dataset:** Dataset yang digunakan untuk analisis dapat ditemukan di dalam folder `data/` di repositori ini.

---

## 🚀 Mari Jelajahi Kodenya!

Setiap tugas analisis diimplementasikan dalam file SQL terpisah, dengan komentar yang jelas untuk menjelaskan logika di balik setiap kueri. Anda dapat menemukan file-file SQL ini di dalam repositori ini, diorganisir dengan rapi di dalam folder `queries/`.

Jangan ragu untuk menjelajahi, memberikan saran, atau bahkan menggunakannya sebagai referensi untuk proyek Anda sendiri!
