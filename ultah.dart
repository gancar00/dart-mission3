void main() {
  // 1. Buat List<Map<String, dynamic>> bernama teman
  // 2. Isi minimal 3 data
  // 3. Masukkan satu data yang tanggal lahirnya null atau kosong
  List<Map<String, dynamic>> teman = [
    {'nama': 'Gancar', 'ultah': '2000-01-15'},
    {'nama': 'Tono', 'ultah': '2005-01-20'},
    {'nama': 'Sarno', 'ultah': '2005-01-23'},
    {'nama': 'Andi', 'ultah': ''}, // Data kosong sesuai instruksi
  ];

  // 4. Gunakan DateTime.now() untuk mendapatkan bulan saat ini
  // (Kita akan ambil nama bulannya untuk judul)
  DateTime sekarang = DateTime.now();
  List<String> namaBulan = [
    "JANUARI", "FEBRUARI", "MARET", "APRIL", "MEI", "JUNI",
    "JULI", "AGUSTUS", "SEPTEMBER", "OKTOBER", "NOVEMBER", "DESEMBER"
  ];
  String bulanIni = namaBulan[sekarang.month - 1];

  print("DAFTAR ULANG TAHUN BULAN $bulanIni:");

  int counter = 0;
  int totalDihubungi = 0;

  // 5. Gunakan perulangan (for)
  for (var data in teman) {
    String? ultah = data['ultah'];

    // 6. Cek dulu: if (ultah == null || ultah.isEmpty)
    if (ultah == null || ultah.isEmpty) {
      print("- Data ${data['nama']} tidak lengkap, dilewati...");
      continue; // Menggunakan continue untuk lanjut ke data berikutnya
    }

    // 7. Ambil tahun dari string tanggal lahir dan kurangi dengan tahun sekarang (2026)
    // Format tanggal: YYYY-MM-DD, kita ambil 4 karakter pertama
    int tahunLahir = int.parse(ultah.substring(0, 4));
    int tahunSekarang = 2026; // Sesuai instruksi di gambar
    int umur = tahunSekarang - tahunLahir;

    counter++;
    totalDihubungi++;

    // 8. Running sesuai format yang diminta
    print("$counter. Risers ${data['nama']}: Wah, lagi ultah nih! Umurnya sekarang $umur tahun.");
  }

  print("---------------------------------------");
  print("(Total ada $totalDihubungi teman yang harus kamu hubungi!)");
}
