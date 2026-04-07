# Jaran App - Daftar Jajanan Lebaran

Project ini dibuat untuk memenuhi tugas mata kuliah **Pemrograman Berbasis Mobile**. [cite_start]Fokus utama project adalah mengimplementasikan berbagai **Widget Fundamental** Flutter untuk menampilkan daftar informasi secara terstruktur

## Deskripsi Tugas

[cite_start]Berdasarkan materi Pertemuan 04, project ini mengaplikasikan konsep *building blocks* Flutter untuk menampilkan daftar item (jajanan) dengan komponen visual yang lengkap[cite: 4, 39, 692]. [cite_start]Layout utama menggunakan kombinasi `Card`, `Image`, dan `Rating` (bintang) sesuai dengan spesifikasi tugas yang diberikan[cite: 614, 692, 700].

## 🛠️ Widget yang Diimplementasikan
Sesuai dengan modul pembelajaran, project ini menggunakan:

* [cite_start]**Structure & Navigation**: `MaterialApp`, `Scaffold`, `AppBar`, dan `BottomNavigationBar`[cite: 33, 76, 81, 148].
* **Layout Widgets**: 
    * [cite_start]`Row` & `Column`: Untuk mengatur tata letak horizontal dan vertikal[cite: 412].
    * [cite_start]`Stack` & `Positioned`: Untuk menumpuk ikon interaktif di atas komponen lain[cite: 22, 23].
    * [cite_start]`Container` & `SizedBox`: Untuk mengatur dimensi, margin, dan jarak antar elemen[cite: 268, 375, 524].
    * [cite_start]`Expanded`: Untuk memastikan teks detail mengisi ruang yang tersedia secara optimal[cite: 21].
* **Display Widgets**: 
    * [cite_start]`Text`: Menampilkan nama, rasa, dan tekstur jajanan[cite: 15].
    * [cite_start]`Image (Asset)`: Menampilkan foto produk yang telah didaftarkan melalui `pubspec.yaml`[cite: 162, 186].
    * [cite_start]`Icon`: Menggunakan Material Icons untuk rating bintang dan tombol aksi[cite: 420, 424].
* [cite_start]**Material Components**: `Card` dengan properti `elevation`, `shape` (RoundedRectangleBorder), dan `clipBehavior`[cite: 606, 655, 656, 660].

## 🚀 Fitur Utama
* [cite_start]**Daftar Terkoneksi**: Menampilkan lebih dari 15 jenis jajanan tradisional dalam satu `ListView` yang dapat digulir[cite: 392].
* [cite_start]**Dinamis Bouncing Physics**: Mengimplementasikan `BouncingScrollPhysics` untuk pengalaman navigasi yang lebih halus[cite: 392].
* [cite_start]**Rating & Like System**: Visualisasi data rating menggunakan logic `for` loop dan informasi jumlah suka yang statis[cite: 569, 700].
This project is a starting point for a Flutter application.

## 📂 Cara Menjalankan
1. [cite_start]Pastikan aset gambar berada di folder `assets/images/` dan sudah terdaftar di `pubspec.yaml`[cite: 191, 194].
2. Jalankan perintah:
   ```bash
   flutter pub get
   flutter run

## Referensi Belajar
Project ini disusun dengan mengacu pada:
* **Modul Pertemuan 04**: Widget Fundamental - Pemrograman Berbasis Mobile.
* [Dokumentasi Resmi Flutter](https://docs.flutter.dev/): Sebagai referensi tambahan penggunaan API Widget.
