import 'dart:io';

import '../lib/controllers/pet_manager.dart';
import '../lib/models/kucing.dart';
import '../lib/models/kelinci.dart';
import '../lib/exceptions/data_tidak_valid_exception.dart';

void main() async {
  // Membuat object PetManager untuk mengelola semua data hewan
  PetManager manager = PetManager();

  // Variabel untuk mengontrol apakah menu terus berjalan atau berhenti
  bool jalan = true;

  // Perulangan menu
  while (jalan) {
    print("\n==========================================");
    print("   SISTEM PENGELOLAAN HEWAN PELIHARAAN");
    print("==========================================");
    print("1. Tambah Hewan");
    print("2. Lihat Semua Hewan");
    print("3. Cari Hewan");
    print("4. Hitung Total Biaya Perawatan");
    print("5. Simpan Data");
    print("6. Hapus Data");
    print("7. Keluar");
    print("==========================================");

    stdout.write("Pilih menu: ");

    int pilihan;

    try {
      pilihan = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Input harus berupa angka!");
      continue;
    }

    switch (pilihan) {
      case 1:
        try {
          print("\n===== Tambah Hewan =====");
          print("1. Kucing");
          print("2. Kelinci");

          stdout.write("Pilih jenis hewan: ");
          int jenis = int.parse(stdin.readLineSync()!);

          stdout.write("Nama Hewan: ");
          String nama = stdin.readLineSync()!;

          stdout.write("Umur Hewan (tahun): ");
          int umur = int.parse(stdin.readLineSync()!);

          stdout.write("Nama Pemilik: ");
          String pemilik = stdin.readLineSync()!;

          stdout.write("Biaya Perawatan: ");
          double biaya = double.parse(stdin.readLineSync()!);

          if (jenis == 1) {
            stdout.write("Ras Kucing: ");
            String ras = stdin.readLineSync()!;

            stdout.write("Warna Mata: ");
            String warnaMata = stdin.readLineSync()!;

            Kucing kucing = Kucing(
              nama,
              umur,
              pemilik,
              biaya,
              ras,
              warnaMata,
            );

            manager.tambahHewan(kucing);
          } else if (jenis == 2) {
            stdout.write("Ras Kelinci: ");
            String ras = stdin.readLineSync()!;

            stdout.write("Berat (kg): ");
            double berat = double.parse(stdin.readLineSync()!);

            Kelinci kelinci = Kelinci(
              nama,
              umur,
              pemilik,
              biaya,
              ras,
              berat,
            );

            manager.tambahHewan(kelinci);
          } else {
            print("Jenis hewan tidak tersedia.");
          }
        } on DataTidakValidException catch (e) {
          print(e);
        } catch (e) {
          print("Input tidak valid.");
        }
        break;

      case 2:
        print("\n===== Daftar Hewan =====");
        manager.lihatSemuaHewan();
        break;

      case 3:
        stdout.write("Masukkan nama hewan yang dicari: ");
        String keyword = stdin.readLineSync()!;

        manager.cariHewan(keyword);
        break;

      case 4:
        double total = manager.hitungTotalBiaya();

        print("\n================================");
        print("Total Biaya Perawatan");
        print("Rp$total");
        print("================================");
        break;

      case 5:
        await manager.simpanData();
        break;

      case 6:
        stdout.write("Masukkan nama hewan yang akan dihapus: ");
        String nama = stdin.readLineSync()!;

        manager.hapusData(nama);
        break;

      case 7:
        jalan = false;
        print("\nTerima kasih telah menggunakan program.");
        break;

      default:
        print("Menu tidak tersedia.");
    }
  }
}