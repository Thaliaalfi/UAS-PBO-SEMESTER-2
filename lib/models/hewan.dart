import '../exceptions/data_tidak_valid_exception.dart';

abstract class Hewan {
  String _nama;
  int _umur;
  String _namaPemilik;
  double _biayaPerawatan;

  Hewan(
    this._nama,
    this._umur,
    this._namaPemilik,
    this._biayaPerawatan,
  );

  // Getter
  String get nama => _nama;
  int get umur => _umur;
  String get namaPemilik => _namaPemilik;
  double get biayaPerawatan => _biayaPerawatan;

  // Setter
  set nama(String value) {
    if (value.trim().isEmpty) {
      throw DataTidakValidException(
          "Nama hewan tidak boleh kosong");
    }
    _nama = value;
  }

  set umur(int value) {
    if (value < 0) {
      throw DataTidakValidException(
          "Umur tidak boleh negatif");
    }
    _umur = value;
  }

  set namaPemilik(String value) {
    if (value.trim().isEmpty) {
      throw DataTidakValidException(
          "Nama pemilik tidak boleh kosong");
    }
    _namaPemilik = value;
  }

  set biayaPerawatan(double value) {
    if (value < 0) {
      throw DataTidakValidException(
          "Biaya perawatan tidak boleh negatif");
    }
    _biayaPerawatan = value;
  }

  void tampilkanInfo();
}