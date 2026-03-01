void main() {
  List<Map<String, dynamic>> teman = [
    {'nama': 'Gancar', 'ultah': '2000-01-15'},
    {'nama': 'Tono', 'ultah': '2005-03-20'},
    {'nama': 'Sarno', 'ultah': '2005-03-23'},
    {'nama': 'Andi', 'ultah': ''}, // Data kosong
  ];

  DateTime sekarang = DateTime.now();

  List<String> namaBulan = [
    "JANUARI", "FEBRUARI", "MARET", "APRIL", "MEI", "JUNI",
    "JULI", "AGUSTUS", "SEPTEMBER", "OKTOBER", "NOVEMBER", "DESEMBER"
  ];

  String bulanIni = namaBulan[sekarang.month - 1];

  print("DAFTAR ULANG TAHUN BULAN $bulanIni:");

  int counter = 0;

  for (var data in teman) {
    String? ultah = data['ultah'];

    // Cek jika data kosong
    if (ultah == null || ultah.isEmpty) {
      print("- Data ${data['nama']} tidak lengkap, dilewati...");
      continue;
    }

    // Ubah string menjadi DateTime
    DateTime tanggalLahir = DateTime.parse(ultah);

    // Cek apakah bulan ulang tahun sama dengan bulan sekarang
    if (tanggalLahir.month == sekarang.month) {
      int umur = sekarang.year - tanggalLahir.year;

      counter++;

      print("$counter. Risers ${data['nama']}: Wah, lagi ultah nih! Umurnya sekarang $umur tahun.");
    }
  }

  print("---------------------------------------");
  print("(Total ada $counter teman yang ulang tahun bulan ini!)");
}
