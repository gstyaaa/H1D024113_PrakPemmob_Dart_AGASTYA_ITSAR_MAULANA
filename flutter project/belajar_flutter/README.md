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

## 📌 Pertemuan 4: Integrasi REST API (Registrasi, Login, dan Katalog Produk)

Pada modul ini dilakukan integrasi aplikasi Flutter dengan REST API backend (CodeIgniter 4) untuk proses autentikasi (Registrasi & Login), penanganan Token Bearer (JWT) yang disimpan di local storage via `shared_preferences`, serta pengambilan data katalog produk secara asinkron menggunakan package `http`.

### 🚀 Fitur & Komponen Pertemuan 4
- **Helper & Layanan API (`lib/helpers/` & `lib/service/`)**:
  - `api.dart`: Helper HTTP client untuk method `GET`, `POST`, dan `DELETE` lengkap dengan handling exception (`app_exception.dart`) dan injeksi Authorization Bearer token.
  - `api_url.dart`: Konfigurasi endpoint REST API backend.
  - `user_info.dart`: Manajemen sesi autentikasi (penyimpanan token, user ID, dan fungsi logout) menggunakan `shared_preferences`.
  - `login_service.dart`, `registrasi_service.dart`, `produk_service.dart`: Layanan untuk komunikasi data API dengan parsing model.
- **Model Data (`lib/model/`)**:
  - `login.dart`: Representasi data respons login (token, userID, userEmail).
  - `registrasi.dart`: Representasi data respons registrasi pengguna baru.
  - `produk.dart`: Representasi data produk (id, kode produk, nama produk, harga produk).
- **Antarmuka Pengguna (`lib/ui/`)**:
  - `registrasi_page.dart`: Form registrasi pengguna baru dengan validasi form dan feedback dialog.
  - `login_page.dart`: Form login yang memvalidasi user, menyimpan token, dan mengarahkan ke katalog produk.
  - `produk_page.dart`: Menampilkan daftar produk dari REST API menggunakan `FutureBuilder` & `ListView`, serta tombol Logout pada AppBar.
  - `produk_form.dart` & `produk_detail.dart`: Form pembuatan/detail informasi produk.

### 🛠️ Struktur Folder Proyek (Terbaru)

```plaintext
lib/
├── helpers/
│   ├── api.dart
│   ├── api_url.dart
│   ├── app_exception.dart
│   └── user_info.dart
├── model/
│   ├── login.dart
│   ├── produk.dart
│   └── registrasi.dart
├── service/
│   ├── login_service.dart
│   ├── produk_service.dart
│   └── registrasi_service.dart
├── ui/
│   ├── login_page.dart
│   ├── registrasi_page.dart
│   ├── produk_page.dart
│   ├── produk_form.dart
│   └── produk_detail.dart
├── about_page.dart
├── column_widget.dart
├── hello_world.dart
├── home_page.dart
├── main.dart
├── row_widget.dart
└── sidemenu.dart
```

### 💻 Cara Menjalankan Proyek (Pertemuan 4)

1. Pastikan backend REST API (CodeIgniter 4) sudah berjalan di `http://localhost:8080`.
2. Jalankan aplikasi Flutter di browser (Chrome / Edge):
   ```bash
   flutter run -d chrome
   ```
   *atau*
   ```bash
   flutter run -d edge
   ```

### 📸 Tampilan Aplikasi Pertemuan 4

#### 1. Halaman Login
![Halaman Registrasi](./login_page.png)

#### 2. Halaman List Produk
![Halaman List Produk](./list_produk.png)


#### 3. Halaman Tambah Produk
![Halama Tambah Produk](./tambah_produk.png)


#### 4. Halaman Detail Produk
![Halama Detail Produk](./detail_produk.png)


#### 5. Halaman Ubah Produk
![Halama Ubah Produk](./ubah_produk.png)


---

## 📌 Pertemuan 5: CRUD Module Flutter Bagian 2 (Integrasi Penuh dengan REST API)

Pada modul ini dilakukan penyempurnaan arsitektur aplikasi menjadi berlapis (*layered architecture*): **UI → Bloc → Helpers**. Registrasi dan login kini berfungsi penuh dengan penyimpanan token (JWT) di local storage, seluruh operasi CRUD produk terhubung end-to-end ke REST API backend (CodeIgniter 4), serta dilengkapi dialog feedback sukses/gagal yang reusable. Halaman awal aplikasi menjadi dinamis: mengecek token tersimpan untuk menentukan masuk ke halaman Login atau langsung ke List Produk.

### 🚀 Fitur & Komponen Pertemuan 5
- **Helper & Layanan API (`lib/helpers/`)**:
  - `api.dart`: HTTP client (`GET`/`POST`/`DELETE`) dengan injeksi header Authorization Bearer token dari local storage pada setiap request, serta penerjemahan status code (200/400/401/403/422/500) menjadi exception yang bermakna.
  - `api_url.dart`: Pusat konfigurasi endpoint (baseUrl, registrasi, login, CRUD produk).
  - `user_info.dart`: Manajemen sesi (set/get token & userID, logout/clear) via `shared_preferences`.
  - `app_exception.dart`: Hierarki exception (`FetchDataException`, `BadRequestException`, `UnauthorisedException`, `InvalidInputException`) untuk penanganan error yang rapi.
- **Bloc / Controller (`lib/bloc/`)**:
  - `registrasi_bloc.dart`: Kirim data registrasi ke API, parsing respons ke model.
  - `login_bloc.dart`: Proses autentikasi, menghasilkan objek `Login` (token + data user).
  - `logout_bloc.dart`: Menghapus sesi dari local storage.
  - `produk_bloc.dart`: Empat operasi CRUD produk — `getProduks()` (list), `addProduk()` (create), `updateProduk()` (update), `deleteProduk()` (delete).
- **Widget Reusable (`lib/widget/`)**:
  - `success_dialog.dart`: Dialog "SUKSES" (hijau) untuk umpan balik berhasil.
  - `warning_dialog.dart`: Dialog "GAGAL" (merah) untuk umpan balik kegagalan.
- **Antarmuka Pengguna (`lib/ui/`)**:
  - `main.dart`: *Gatekeeper* sesi — jika token ada maka buka List Produk, jika tidak buka halaman Login.
  - `registrasi_page.dart` & `login_page.dart`: Tombol submit kini berfungsi (`_submit()`), lengkap dengan dialog sukses/gagal; login menyimpan token & userID lalu `pushReplacement` ke List Produk.
  - `produk_page.dart`: Menampilkan data produk asli dari REST API menggunakan `FutureBuilder` + `ListView.builder`, serta fungsi Logout di drawer.
  - `produk_form.dart`: Satu form dua mode — TAMBAH (simpan) dan UBAH (update), dengan pre-fill data saat mode edit.
  - `produk_detail.dart`: Detail produk dengan tombol EDIT dan DELETE (konfirmasi hapus via AlertDialog).

### 🛠️ Struktur Folder Proyek (Terbaru)

```plaintext
lib/
├── bloc/
│   ├── login_bloc.dart
│   ├── logout_bloc.dart
│   ├── produk_bloc.dart
│   └── registrasi_bloc.dart
├── helpers/
│   ├── api.dart
│   ├── api_url.dart
│   ├── app_exception.dart
│   └── user_info.dart
├── model/
│   ├── login.dart
│   ├── produk.dart
│   └── registrasi.dart
├── ui/
│   ├── login_page.dart
│   ├── registrasi_page.dart
│   ├── produk_page.dart
│   ├── produk_form.dart
│   └── produk_detail.dart
├── widget/
│   ├── success_dialog.dart
│   └── warning_dialog.dart
├── about_page.dart
├── column_widget.dart
├── hello_world.dart
├── home_page.dart
├── main.dart
├── row_widget.dart
└── sidemenu.dart
```

### 💻 Cara Menjalankan Proyek (Pertemuan 5)

1. Pastikan backend REST API (CodeIgniter 4) sudah berjalan dan database siap.
2. Perhatikan konfigurasi `baseUrl` di `lib/helpers/api_url.dart`:
   - Emulator Android: `http://10.0.2.2/toko-api/public` (`10.0.2.2` = alias localhost komputer host dari dalam emulator)
   - Browser (Chrome/Edge): gunakan `http://localhost/toko-api/public`
   - HP fisik: gunakan IP LAN komputer (misal `http://192.168.1.x/toko-api/public`)
3. Jalankan aplikasi:
   ```bash
   flutter run -d emulator-5554
   ```
   *atau*
   ```bash
   flutter run -d chrome
   ```

### 📸 Tampilan Aplikasi Pertemuan 5

#### 1. Dialog Login Gagal
![Dialog Login Gagal](./login_gagal.png)

#### 2. Halaman List Produk (Data dari REST API)
![Halaman List Produk](./list_produk.png)


---
