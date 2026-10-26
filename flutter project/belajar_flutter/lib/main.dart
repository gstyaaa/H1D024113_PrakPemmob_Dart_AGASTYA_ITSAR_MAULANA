import 'package:flutter/material.dart';

// Import file yang ingin dipanggil:
import 'package:belajar_flutter/hello_world.dart';
import 'package:belajar_flutter/column_widget.dart';
import 'package:belajar_flutter/row_widget.dart';
import 'package:belajar_flutter/ui/produk_form.dart';
import 'package:belajar_flutter/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      // Ganti bagian home sesuai halaman yang mau ditampilkan:
      // Contoh: HelloWorld(), ColumnWidget(), RowWidget(), ProdukForm(), atau ProdukPage()
      home: ProdukPage(), 
    );
  }
}