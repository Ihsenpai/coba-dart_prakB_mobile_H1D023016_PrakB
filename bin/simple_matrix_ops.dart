/*
 * STUDI KASUS: Operasi Matriks Sederhana (Penjumlahan)
 * Nama: Fatihul Ihsan
 * NIM: H1D023016
 */

void main() {
  print("--- Program Penjumlahan Matriks Sederhana ---");
  print("Oleh: Fatihul Ihsan (H1D023016)\n");

  // 1. Definisikan dua matriks (2x3)
  List<List<int>> matriksA = [
    [1, 2, 3],
    [4, 5, 6],
  ];

  List<List<int>> matriksB = [
    [9, 8, 7],
    [6, 5, 4],
  ];

  // Cetak matriks awal
  print("Matriks A:");
  cetakMatriks(matriksA);

  print("\nMatriks B:");
  cetakMatriks(matriksB);

  // 2. Lakukan operasi penjumlahan
  print("\nHasil Penjumlahan (A + B):");
  List<List<int>>? hasil = jumlahkanMatriks(matriksA, matriksB);

  // 3. Tampilkan hasilnya
  if (hasil != null) {
    cetakMatriks(hasil);
  } else {
    print("Error: Ukuran matriks tidak sama, tidak bisa dijumlahkan.");
  }
}

/**
 * Fungsi untuk mencetak matriks ke konsol.
 */

void cetakMatriks(List<List<int>> matriks) {
  for (int i = 0; i < matriks.length; i++) {
    String baris = "[ ";
    for (int j = 0; j < matriks[i].length; j++) {
      baris += "${matriks[i][j]} ";
    }
    baris += "]";
    print(baris);
  }
}

/**
 * Fungsi untuk menjumlahkan dua matriks.
 * Mengembalikan 'null' jika ukuran tidak valid.
 */

List<List<int>>? jumlahkanMatriks(List<List<int>> a, List<List<int>> b) {
  // Cek jumlah baris
  if (a.length != b.length) {
    return null;
  }
  // Cek jumlah kolom
  if (a.isEmpty || a[0].length != b[0].length) {
    return null;
  }

  // Siapkan matriks hasil (masih kosong)
  List<List<int>> matriksHasil = [];

  // Loop baris (i)
  for (int i = 0; i < a.length; i++) {
    List<int> barisBaru = [];
    // Loop kolom (j)
    for (int j = 0; j < a[i].length; j++) {
      // Lakukan penjumlahan elemen
      int elemenHasil = a[i][j] + b[i][j];
      barisBaru.add(elemenHasil);
    }
    matriksHasil.add(barisBaru);
  }
  return matriksHasil;
}