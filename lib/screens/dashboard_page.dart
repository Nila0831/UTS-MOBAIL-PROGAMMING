import 'package:flutter/material.dart'; // Mengambil library Flutter Material untuk membuat UI
import '../models/menu_item.dart'; // Mengambil model MenuItem dari folder models
import '../widgets/menu_card.dart'; // Mengambil widget MenuCard dari folder widgets
import 'login_page.dart'; // Mengambil LoginPage untuk kembali ke login saat logout

/// Dashboard menggunakan StatelessWidget karena hanya menampilkan data.
class DashboardPage extends StatelessWidget { // Membuat halaman dashboard yang tidak memiliki state lokal
  const DashboardPage({super.key}); // Constructor DashboardPage dengan key bawaan Flutter

  @override // Menandakan build menimpa method dari StatelessWidget
  Widget build(BuildContext context) { // Method untuk membangun tampilan dashboard
    final String userEmail = // Membuat variabel userEmail untuk menyimpan email user
        ModalRoute.of(context)!.settings.arguments as String? ?? 'Pengguna'; // Mengambil data email dari halaman login, jika kosong gunakan 'Pengguna'

    final List<MenuItem> menuList = [ // Membuat list menu dashboard menggunakan model MenuItem
      MenuItem('Absen Masuk'), // Menu pertama
      MenuItem('Absen Keluar'), // Menu kedua
      MenuItem('Riwayat Absensi'), // Menu ketiga
      MenuItem('Jadwal Kuliah'), // Menu keempat
      MenuItem('Informasi Kampus'), // Menu kelima
      MenuItem('Notifikasi'), // Menu keenam
      MenuItem('Profil Mahasiswa'), // Menu ketujuh
      MenuItem('Nilai'), // Menu kedelapan
      MenuItem('Presensi Bulanan'), // Menu kesembilan
      MenuItem('Pengaturan'), // Menu kesepuluh
    ]; // Akhir list menuList

    return Scaffold( // Struktur utama halaman dashboard
      appBar: AppBar( // Bagian atas halaman
        title: const Text('Dashboard Absensi'), // Judul AppBar
        backgroundColor: Colors.green, // Warna AppBar hijau
        actions: [ // Daftar widget di kanan AppBar
          IconButton( // Tombol berbentuk icon
            icon: const Icon(Icons.logout), // Icon logout
            onPressed: () { // Fungsi saat tombol logout ditekan
              Navigator.pushAndRemoveUntil( // Navigasi kembali ke login dan hapus semua halaman sebelumnya
                context, // Context halaman saat ini
                MaterialPageRoute( // Membuat route manual ke halaman login
                  builder: (context) => const LoginPage(), // Halaman tujuan yaitu LoginPage
                ), // Akhir MaterialPageRoute
                (route) => false, // Menghapus semua route sebelumnya dari navigation stack
              ); // Akhir Navigator.pushAndRemoveUntil
            }, // Akhir onPressed
          ), // Akhir IconButton
        ], // Akhir actions
      ), // Akhir AppBar

      body: SafeArea( // Membuat tampilan aman dari status bar atau notch
        child: Padding( // Memberi jarak di sekitar isi halaman
          padding: const EdgeInsets.all(16), // Jarak semua sisi sebesar 16
          child: Column( // Menyusun widget secara vertikal dari atas ke bawah
            children: [ // Daftar widget di dalam Column
              Card( // Kartu untuk menampilkan informasi user
                elevation: 4, // Efek bayangan card
                shape: RoundedRectangleBorder( // Mengatur bentuk card
                  borderRadius: BorderRadius.circular(16), // Membuat sudut card melengkung
                ), // Akhir shape
                child: Padding( // Memberi jarak di dalam card
                  padding: const EdgeInsets.all(16), // Jarak dalam card sebesar 16
                  child: Row( // Menyusun isi card secara horizontal
                    children: [ // Daftar widget dalam Row
                      const CircleAvatar( // Icon user berbentuk lingkaran
                        radius: 28, // Ukuran lingkaran
                        backgroundColor: Colors.green, // Warna background lingkaran
                        child: Icon(Icons.person, color: Colors.white), // Icon orang warna putih
                      ), // Akhir CircleAvatar
                      const SizedBox(width: 12), // Jarak horizontal antara icon dan teks
                      Expanded( // Membuat teks mengisi sisa ruang
                        child: Text( // Menampilkan teks selamat datang
                          'Selamat Datang, $userEmail', // Isi teks dengan email user
                          style: const TextStyle( // Mengatur gaya teks
                            fontSize: 16, // Ukuran teks 16
                            fontWeight: FontWeight.bold, // Teks tebal
                          ), // Akhir TextStyle
                        ), // Akhir Text
                      ), // Akhir Expanded
                    ], // Akhir children Row
                  ), // Akhir Row
                ), // Akhir Padding
              ), // Akhir Card user

              const SizedBox(height: 16), // Jarak antara card user dan list menu

              Expanded( // Membuat ListView memenuhi sisa tinggi layar
                child: ListView.builder( // Membuat list secara dinamis
                  itemCount: menuList.length, // Jumlah item sesuai panjang menuList
                  itemBuilder: (context, index) { // Fungsi untuk membuat setiap item list
                    return MenuCard( // Menggunakan widget MenuCard
                      title: menuList[index].title, // Mengirim title menu berdasarkan index
                    ); // Akhir MenuCard
                  }, // Akhir itemBuilder
                ), // Akhir ListView.builder
              ), // Akhir Expanded
            ], // Akhir children Column
          ), // Akhir Column
        ), // Akhir Padding
      ), // Akhir SafeArea
    ); // Akhir Scaffold
  } // Akhir method build
} // Akhir class DashboardPage