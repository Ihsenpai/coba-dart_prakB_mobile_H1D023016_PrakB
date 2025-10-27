# Studi Kasus: Operasi Matriks Sederhana (Dart)

---

## Identitas Praktikan

* **Nama:** Fatihul Ihsan
* **NIM:** H1D023016
* **Shift Lama:** Shift D
* **Shift Baru:** Shift B

---

## Penjelasan Kode

Program ini terdiri dari 3 (tiga) fungsi utama yang berada di dalam file `bin/simple_matrix_ops.dart`.

### 1. `void main()`

Ini adalah fungsi utama tempat program dieksekusi.

* **Definisi Matriks**: Dua buah matriks (`matriksA` dan `matriksB`) didefinisikan menggunakan tipe data `List<List<int>>` (List dua dimensi).
* **Pencetakan**: Mencetak kedua matriks ke konsol dengan memanggil fungsi `cetakMatriks()`.
* **Penjumlahan**: Melakukan operasi penjumlahan dengan memanggil fungsi `jumlahkanMatriks()`.
* **Validasi Hasil**: Memeriksa apakah hasil penjumlahan `null` atau tidak. Jika `null`, berarti ukuran matriks tidak sama. Jika tidak `null`, hasilnya akan dicetak.

```dart
void main() {
  // 1. Definisikan dua matriks (2x3)
  List<List<int>> matriksA = [
    [1, 2, 3],
    [4, 5, 6],
  ];

  List<List<int>> matriksB = [
    [9, 8, 7],
    [6, 5, 4],
  ];

  // ... (memanggil fungsi cetak dan jumlah)
}
