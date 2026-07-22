class DataTidakValidException implements Exception {
  final String pesan;

  DataTidakValidException(this.pesan);

  @override
  String toString() {
    return "Error: $pesan";
  }
}