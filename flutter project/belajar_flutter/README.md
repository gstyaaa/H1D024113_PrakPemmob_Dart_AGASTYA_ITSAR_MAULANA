# Praktikum Pemrograman Mobile - Dasar Widget Flutter

Proyek ini berisi implementasi materi praktikum dasar pengembangan aplikasi mobile menggunakan framework Flutter. Materi mencakup pengenalan widget dasar, tata letak (layout), pembuatan formulir input, hingga pemanfaatan daftar berulang (ListView).

## 🚀 Fitur & Halaman Praktikum

1. **Hello World (`hello_world.dart`)**: Pengenalan widget `Scaffold`, `AppBar`, `Center`, dan `Text`.
2. **Column Widget (`column_widget.dart`)**: Penyusunan elemen antarmuka secara vertikal.
3. **Row Widget (`row_widget.dart`)**: Penyusunan elemen antarmuka secara horizontal.
4. **Form Produk & Detail (`ui/produk_form.dart` & `ui/produk_detail.dart`)**: 
   - Input data produk (Kode, Nama, dan Harga).
   - Pengiriman data antarhalaman (*Navigation & Routing*).
5. **List Data Produk (`ui/produk_page.dart`)**: Menampilkan daftar barang menggunakan kombinasi `ListView` dan `Card`.

---

## 🛠️ Struktur Folder

```text
lib/
├── main.dart
├── hello_world.dart
├── column_widget.dart
├── row_widget.dart
└── ui/
    ├── produk_form.dart
    ├── produk_detail.dart
    └── produk_page.dart