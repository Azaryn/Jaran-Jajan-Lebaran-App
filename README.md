# Jaran App - Daftar Jajanan Lebaran

Project ini dibuat untuk memenuhi tugas mata kuliah **Pemrograman Berbasis Mobile**. Fokus utama project adalah mengimplementasikan berbagai **Widget Fundamental** Flutter untuk menampilkan daftar informasi secara terstruktur

## Deskripsi Tugas
Berdasarkan materi Pertemuan 04, project ini mengaplikasikan konsep *building blocks* Flutter untuk menampilkan daftar item (jajanan) dengan komponen visual yang lengkap. Layout utama menggunakan kombinasi `Card`, `Image`, dan `Rating` (bintang) sesuai dengan spesifikasi tugas yang diberikan.

## 🛠️ Widget yang Diimplementasikan
Sesuai dengan modul pembelajaran, project ini menggunakan:

* **Structure & Navigation**: `MaterialApp`, `Scaffold`, `AppBar`, dan `BottomNavigationBar`.
* **Layout Widgets**: 
    * `Row` & `Column`: Untuk mengatur tata letak horizontal dan vertikal.
    * `Stack` & `Positioned`: Untuk menumpuk ikon interaktif di atas komponen lain.
    * `Container` & `SizedBox`: Untuk mengatur dimensi, margin, dan jarak antar elemen.
    * `Expanded`: Untuk memastikan teks detail mengisi ruang yang tersedia secara optimal.
* **Display Widgets**: 
    * `Text`: Menampilkan nama, rasa, dan tekstur jajanan.
    * `Image (Asset)`: Menampilkan foto produk yang telah didaftarkan melalui `pubspec.yaml`.
    * `Icon`: Menggunakan Material Icons untuk rating bintang dan tombol aksi.
* **Material Components**: `Card` dengan properti `elevation`, `shape` (RoundedRectangleBorder), dan `clipBehavior`.

## 🚀 Fitur Utama
* **Daftar Terkoneksi**: Menampilkan lebih dari 15 jenis jajanan tradisional dalam satu `ListView` yang dapat digulir.
* **Dinamis Bouncing Physics**: Mengimplementasikan `BouncingScrollPhysics` untuk pengalaman navigasi yang lebih halus.
* **Rating & Like System**: Visualisasi data rating menggunakan logic `for` loop dan informasi jumlah suka yang statis.
This project is a starting point for a Flutter application.

## 📂 Cara Menjalankan
1. Pastikan aset gambar berada di folder `assets/images/` dan sudah terdaftar di `pubspec.yaml`.
2. Jalankan perintah:
   ```bash
   flutter pub get
   flutter run

## Referensi Belajar
Project ini disusun dengan mengacu pada:
* **Modul Pertemuan 04**: Widget Fundamental - Pemrograman Berbasis Mobile.
* [Dokumentasi Resmi Flutter](https://docs.flutter.dev/): Sebagai referensi tambahan penggunaan API Widget.
