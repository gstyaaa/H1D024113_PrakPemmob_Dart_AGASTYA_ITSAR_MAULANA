# Implementasi Queue Sederhana di Dart

Program ini adalah implementasi struktur data **Queue (Antrean)** sederhana menggunakan bahasa pemrograman Dart dengan prinsip **FIFO (First In, First Out)**.

---

## 📌 Output Program (6 Baris)

Saat dijalankan, program akan menghasilkan output tepat 6 baris:

```text
10 berhasil ditambahkan ke antrian
20 berhasil ditambahkan ke antrian
30 berhasil ditambahkan ke antrian
isi antrian [10, 20, 30]
10 dihapus dari antrian
isi antrian [20, 30]
```

---

## ⚙️ Penjelasan Fungsi

1. **`enqueue(T element)`**
   - Menambahkan elemen ke urutan paling belakang antrean (`_items.add(element)`).
   - Menampilkan notifikasi bahwa data berhasil masuk.

2. **`dequeue()`**
   - Mengambil dan menghapus elemen dari urutan paling depan (`_items.removeAt(0)`).
   - Menampilkan notifikasi bahwa data terdepan telah dihapus.

3. **`display()`**
   - Mencetak isi elemen antrean saat ini dalam format list `[ ... ]`.

4. **`isEmpty`**
   - Getter boolean untuk memeriksa apakah antrean sedang kosong atau tidak.

---

## 🚀 Cara Menjalankan

Buka terminal di folder project ini lalu jalankan:

```bash
dart run queue.dart
```
