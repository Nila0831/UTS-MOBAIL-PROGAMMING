import 'package:flutter/material.dart'; // Mengambil library Flutter Material untuk membuat UI

/// Widget khusus (reusable)
/// digunakan untuk menampilkan menu
class MenuCard extends StatelessWidget { // Class MenuCard sebagai widget yang tidak memiliki state
  final String title; // Variabel untuk menyimpan judul menu

  const MenuCard({ // Constructor MenuCard
    super.key, // Key bawaan Flutter
    required this.title, // title wajib diisi saat MenuCard dipanggil
  }); // Akhir constructor

  @override // Menandakan build menimpa method dari StatelessWidget
  Widget build(BuildContext context) { // Method untuk membangun tampilan MenuCard
    return Card( // Membuat tampilan berbentuk kartu

      /// Efek bayangan
      elevation: 3, // Memberikan efek bayangan pada card

      /// Jarak antar card
      margin: const EdgeInsets.only(bottom: 10), // Memberi jarak bawah antar card sebesar 10

      /// Bentuk card
      shape: RoundedRectangleBorder( // Mengatur bentuk card
        borderRadius: BorderRadius.circular(14), // Membuat sudut card menjadi melengkung
      ), // Akhir shape

      child: ListTile( // Isi card menggunakan ListTile agar rapi

        /// Icon kiri
        leading: const Icon( // Icon yang tampil di bagian kiri ListTile
          Icons.check_circle, // Menggunakan icon ceklis
          color: Colors.green, // Warna icon hijau
        ), // Akhir leading icon

        /// Judul menu
        title: Text(title), // Menampilkan teks menu sesuai nilai title

        /// Icon kanan
        trailing: const Icon( // Icon yang tampil di bagian kanan ListTile
          Icons.arrow_forward_ios, // Icon panah ke kanan
          size: 16, // Ukuran icon 16
        ), // Akhir trailing icon

        /// Aksi saat diklik
        onTap: () { // Fungsi yang berjalan saat card diklik
          ScaffoldMessenger.of(context).showSnackBar( // Menampilkan pesan kecil di bawah layar
            SnackBar(content: Text('$title dipilih')), // Isi pesan sesuai menu yang diklik
          ); // Akhir SnackBar
        }, // Akhir onTap
      ), // Akhir ListTile
    ); // Akhir Card
  } // Akhir method build
} // Akhir class MenuCard