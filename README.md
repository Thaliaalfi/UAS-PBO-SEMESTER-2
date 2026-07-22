# Sistem Pengelolaan Hewan Peliharaan

## Identitas
**Nama          :** Thalia Alfi 
**NIM           :** 251240001658
**Mata Kuliah   :** Pemrograman Berorientasi Objek (PBO)  
**Tema Aplikasi :** Sistem Pengelolaan Hewan Peliharaan

---

## Deskripsi

Aplikasi berbasis **Command Line Interface (CLI)** yang dibuat menggunakan bahasa pemrograman **Dart** untuk mengelola data hewan peliharaan, yaitu **kucing** dan **kelinci**. Program ini menerapkan konsep **Object-Oriented Programming (OOP)** seperti inheritance, encapsulation, polymorphism, exception handling, collection, higher order function, serta asynchronous programming.

---

## Fitur Program

- Menambahkan data hewan peliharaan (Kucing dan Kelinci).
- Menampilkan seluruh data hewan yang telah tersimpan.
- Mencari data hewan berdasarkan nama.
- Menghitung total biaya perawatan seluruh hewan.
- Menghapus data hewan berdasarkan nama.
- Memvalidasi data menggunakan custom exception.
- Mensimulasikan proses penyimpanan data menggunakan `Future`, `async`, dan `await`.

---

## Konsep Pemrograman yang Digunakan

- Class dan Object
- Inheritance
- Encapsulation
- Polymorphism
- Constructor
- Collection (`List`)
- Exception Handling
- Higher Order Function (`where()` dan `fold()`)
- Asynchronous Programming (`Future`, `async`, `await`)

---

## Cara Menjalankan Program

1. Pastikan **Dart SDK** telah terpasang pada komputer.
2. Buka terminal pada folder project.
3. Jalankan perintah berikut:

```bash
dart run bin/main.dart
```

4. Ikuti menu yang muncul pada terminal untuk mengelola data hewan peliharaan.

---

## Struktur Project

```
bin/main.dart
lib/controllers/pet_manager.dart
lib/models/hewan.dart
lib/models/kucing.dart
lib/models/kelinci.dart
lib/exceptions/data_tidak_valid_exception.dart
```
---

## Tujuan Project

Project ini dibuat sebagai tugas **Ujian Akhir Semester (UAS)** mata kuliah **Pemrograman Berorientasi Objek (PBO)**. Tujuan utama project ini adalah mengimplementasikan konsep-konsep OOP menggunakan bahasa pemrograman Dart melalui studi kasus **Sistem Pengelolaan Hewan Peliharaan**.

---
