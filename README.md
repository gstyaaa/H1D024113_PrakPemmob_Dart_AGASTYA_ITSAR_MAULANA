# Praktikum Pemrograman Mobile

Repositori ini berisi kumpulan materi, latihan, dan tugas praktikum mata kuliah Pemrograman Mobile.

---

## 📌 Pertemuan 1: Implementasi Queue Sederhana di Dart

Pada modul ini dilakukan implementasi struktur data **Queue (Antrean)** sederhana menggunakan bahasa pemrograman Dart dengan prinsip **FIFO (First In, First Out)**.

### ⚙️ Penjelasan Fungsi
- `enqueue(T element)`: Menambahkan elemen ke urutan paling belakang antrean (`_items.add(element)`) dan menampilkan notifikasi data berhasil masuk.
- `dequeue()`: Mengambil dan menghapus elemen dari urutan paling depan (`_items.removeAt(0)`) dan menampilkan notifikasi data terdepan telah dihapus.
- `display()`: Mencetak isi elemen antrean saat ini dalam format list `[ ... ]`.
- `isEmpty`: Getter boolean untuk memeriksa apakah antrean sedang kosong atau tidak.

### 📤 Output Program (6 Baris)
```plaintext
10 berhasil ditambahkan ke antrian
20 berhasil ditambahkan ke antrian
30 berhasil ditambahkan ke antrian
isi antrian [10, 20, 30]
10 dihapus dari antrian
isi antrian [20, 30]
```

### 🚀 Cara Menjalankan Pertemuan 1
Buka terminal lalu jalankan perintah:
```bash
dart run queue.dart
```

---

## 📌 Pertemuan 2: Praktikum Pemrograman Mobile - Dasar Widget Flutter

Proyek ini berisi implementasi materi praktikum dasar pengembangan aplikasi mobile menggunakan framework Flutter. Materi mencakup pengenalan widget dasar, tata letak (*layout*), pembuatan formulir input, hingga pemanfaatan daftar berulang (*ListView*).

### 🚀 Fitur & Halaman Pertemuan 2
- **Hello World (`hello_world.dart`)**: Pengenalan widget `Scaffold`, `AppBar`, `Center`, dan `Text`.
- **Column Widget (`column_widget.dart`)**: Penyusunan elemen antarmuka secara vertikal.
- **Row Widget (`row_widget.dart`)**: Penyusunan elemen antarmuka secara horizontal.
- **Form Produk & Detail (`ui/produk_form.dart` & `ui/produk_detail.dart`)**:
  - Input data produk (Kode, Nama, dan Harga).
  - Pengiriman data antarhalaman (*Navigation & Routing*).
- **List Data Produk (`ui/produk_page.dart`)**: Menampilkan daftar barang menggunakan kombinasi `ListView` dan `Card`.

---

## 📌 Pertemuan 3: Routes, Side Menu, Login dan Local Storage

Pada modul ini dilakukan praktikum pembuatan halaman autentikasi Login, penggunaan Local Storage menggunakan `shared_preferences` untuk menyimpan sesi pengguna, serta pembuatan Side Menu (*Drawer*) untuk navigasi antarhalaman.

### 🚀 Fitur & Halaman Pertemuan 3
- **Halaman Login (`login_page.dart`)**: Form autentikasi username dan password, serta menyimpan username pengguna ke local storage via `shared_preferences`.
- **Halaman Utama (`home_page.dart`)**: Menampilkan pesan selamat datang yang dipersonalisasi sesuai username yang tersimpan di local storage.
- **Side Menu / Drawer (`sidemenu.dart`)**: Navigasi bilah samping untuk berpindah antara halaman Home dan About.
- **Halaman About (`about_page.dart`)**: Halaman statis informasi yang terhubung melalui side menu.

## 🛠️ Struktur Folder Proyek

```plaintext
lib/
├── main.dart
├── hello_world.dart
├── column_widget.dart
├── row_widget.dart
├── login_page.dart
├── home_page.dart
├── sidemenu.dart
├── about_page.dart
└── ui/
    ├── produk_form.dart
    ├── produk_detail.dart
    └── produk_page.dart
```

---

## 💻 Cara Menjalankan Proyek Flutter (Pertemuan 2 & 3)

1. Pastikan dependensi terpasang (termasuk `shared_preferences` untuk Pertemuan 3):
   ```bash
   flutter pub get
   ```

2. Jalankan aplikasi melalui browser (Edge/Chrome) atau emulator:
   ```bash
   flutter run -d edge
   ```
### 📸 Tampilan Aplikasi Pertemuan 3

#### 1. Halaman Login
![Halaman Login](./login_page.png)

#### 2. Halaman Home (User Logged In)
![Halaman Home](./page_admin.png)

---