import 'package:flutter/material.dart'; // Mengambil library Material Design Flutter untuk membuat UI aplikasi

// Import halaman (screens)
import 'screens/login_page.dart'; // Menghubungkan main.dart dengan file halaman login
import 'screens/forgot_password_page.dart'; // Menghubungkan main.dart dengan file halaman lupa password
import 'screens/dashboard_page.dart'; // Menghubungkan main.dart dengan file halaman dashboard

// Import route helper
import 'utils/app_routes.dart'; // Menghubungkan main.dart dengan file route agar nama route tidak ditulis manual

/// Program dimulai dari sini
void main() { // Fungsi utama yang pertama kali dijalankan saat aplikasi dibuka
  runApp(const MyApp()); // Menjalankan aplikasi Flutter dengan widget MyApp
}

/// Widget utama aplikasi
/// Semua halaman dibungkus di sini
class MyApp extends StatelessWidget { // Membuat class MyApp sebagai widget utama yang tidak memiliki perubahan state
  const MyApp({super.key}); // Constructor MyApp dengan key bawaan Flutter

  @override // Menandakan bahwa method build menimpa method dari StatelessWidget
  Widget build(BuildContext context) { // Method untuk membangun tampilan aplikasi
    return MaterialApp( // Widget utama untuk aplikasi berbasis Material Design

      /// Menghilangkan banner debug
      debugShowCheckedModeBanner: false, // Menghilangkan tulisan DEBUG di pojok kanan atas aplikasi

      /// Judul aplikasi
      title: 'Absensi Mahasiswa RSK', // Memberikan judul aplikasi

      /// Halaman pertama saat aplikasi dibuka
      initialRoute: AppRoutes.login, // Menentukan halaman awal aplikasi yaitu halaman login

      /// Daftar route (navigasi halaman)
      routes: { // Menyimpan daftar route atau jalur halaman aplikasi
        AppRoutes.login: (context) => const LoginPage(), // Jika route login dipanggil, tampilkan LoginPage
        AppRoutes.forgot: (context) => const ForgotPasswordPage(), // Jika route forgot dipanggil, tampilkan ForgotPasswordPage
        AppRoutes.dashboard: (context) => const DashboardPage(), // Jika route dashboard dipanggil, tampilkan DashboardPage
      }, // Akhir daftar routes
    ); // Akhir MaterialApp
  } // Akhir method build
} // Akhir class MyApp