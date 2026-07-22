import 'hewan.dart';
import '../exceptions/data_tidak_valid_exception.dart';

class Kelinci extends Hewan {
  String _ras;
  double _berat;

  Kelinci(
    String nama,
    int umur,
    String namaPemilik,
    double biayaPerawatan,
    this._ras,
    this._berat,
  ) : super(
          nama,
          umur,
          namaPemilik,
          biayaPerawatan,
        );

  // Getter
  String get ras => _ras;
  double get berat => _berat;

  // Setter
  set ras(String value) {
    if (value.trim().isEmpty) {
      throw DataTidakValidException(
          "Ras kelinci tidak boleh kosong");
    }
    _ras = value;
  }

  set berat(double value) {
    if (value <= 0) {
      throw DataTidakValidException(
          "Berat harus lebih dari 0");
    }
    _berat = value;
  }

  @override
  void tampilkanInfo() {
    print("""
===== DATA KELINCI =====
Nama             : $nama
Umur             : $umur tahun
Nama Pemilik     : $namaPemilik
Ras              : $ras
Berat            : $berat kg
Biaya Perawatan  : Rp$biayaPerawatan
========================
""");
  }
}