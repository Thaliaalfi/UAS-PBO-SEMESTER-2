import 'hewan.dart';
import '../exceptions/data_tidak_valid_exception.dart';

class Kucing extends Hewan {
  String _ras;
  String _warnaMata;

  Kucing(
    String nama,
    int umur,
    String namaPemilik,
    double biayaPerawatan,
    this._ras,
    this._warnaMata,
  ) : super(
          nama,
          umur,
          namaPemilik,
          biayaPerawatan,
        );

  String get ras => _ras;
  String get warnaMata => _warnaMata;

  set ras(String value) {
  if (value.trim().isEmpty) {
    throw DataTidakValidException(
      "Ras kucing tidak boleh kosong",
    );
   }
   _ras = value;
  }

  set warnaMata(String value) {
  if (value.trim().isEmpty) {
    throw DataTidakValidException(
      "Warna mata tidak boleh kosong",
    );
   }
   _warnaMata = value;
  }

  @override
  void tampilkanInfo() {
    print("""
===== DATA KUCING =====
Nama             : $nama
Umur             : $umur tahun
Nama Pemilik     : $namaPemilik
Ras              : $ras
Warna Mata       : $warnaMata
Biaya Perawatan  : Rp$biayaPerawatan
========================
""");
  }
}