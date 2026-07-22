import '../models/hewan.dart';

class PetManager {
  final List<Hewan> _daftarHewan = [];

  // Menambahkan data hewan
  void tambahHewan(Hewan hewan) {
    _daftarHewan.add(hewan);
    print("Data hewan berhasil ditambahkan.");
  }

  // Menampilkan semua data hewan
  void lihatSemuaHewan() {
    if (_daftarHewan.isEmpty) {
      print("Belum ada data hewan.");
      return;
    }

    for (Hewan hewan in _daftarHewan) {
      hewan.tampilkanInfo();
    }
  }

  // Mencari hewan berdasarkan nama
  void cariHewan(String keyword) {
    var hasil = _daftarHewan.where(
      (hewan) =>
          hewan.nama.toLowerCase().contains(
                keyword.toLowerCase(),
              ),
    );

    if (hasil.isEmpty) {
      print("Data hewan tidak ditemukan.");
      return;
    }

    for (Hewan hewan in hasil) {
      hewan.tampilkanInfo();
    }
  }

  // Menghitung total biaya perawatan
  double hitungTotalBiaya() {
    return _daftarHewan.fold(
      0,
      (total, hewan) => total + hewan.biayaPerawatan,
    );
  }

  // Simulasi menyimpan data (Async/Await)
  Future<void> simpanData() async {
    print("Menyimpan data hewan...");

    await Future.delayed(Duration(seconds: 2));

    print("Data hewan berhasil disimpan.");
  }

  // Menghapus data berdasarkan nama
  void hapusData(String namaHewan) {
    int jumlahAwal = _daftarHewan.length;

    _daftarHewan.removeWhere(
      (hewan) =>
          hewan.nama.toLowerCase() ==
          namaHewan.toLowerCase(),
    );

    if (_daftarHewan.length < jumlahAwal) {
      print("Data hewan berhasil dihapus.");
    } else {
      print("Data hewan tidak ditemukan.");
    }
  }
}