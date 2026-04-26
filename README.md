# 📱 ABSENSI MAHASISWA RSK - UTS Mobile Programming

## Identitas
Nama: NI KADEK NILA AGUSTINI DEWI
NIM: 2401020065
Prodi: Rekayasa Sistem Komputer  
Semester: 4  
Mata Kuliah: Mobile Programming  

---

## Deskripsi Aplikasi
Aplikasi **Absensi Mahasiswa RSK** adalah aplikasi Flutter sederhana yang dibuat untuk memenuhi tugas UTS Mobile Programming. Aplikasi ini memiliki 3 halaman utama yaitu Login, Lupa Password, dan Dashboard Absensi.

---

## Login
Fitur login menggunakan:
- Form validation (email & password)
- State management menggunakan setState
- Snackbar untuk feedback user
- Show / Hide password

Data Login:
Email: deklaa2010@gmail.com  
Password: ddekla31  

---

## Lupa Password
Fitur:
- Input email
- Validasi email
- Simulasi kirim link reset password
- Feedback menggunakan Snackbar

---

## Dashboard
Fitur:
- Menampilkan menu absensi
- Menggunakan ListView.builder
- Menggunakan Card sebagai tampilan
- Menampilkan nama/email user
- Tombol logout

---

## Struktur Folder
lib/  
├── main.dart  
├── models/  
│   └── menu_item.dart  
├── screens/  
│   ├── login_page.dart  
│   ├── forgot_password_page.dart  
│   └── dashboard_page.dart  
├── utils/  
│   └── app_routes.dart  
└── widgets/  
    └── menu_card.dart  

---

## Widget yang Digunakan
Scaffold, AppBar, Text, Icon, ElevatedButton, TextButton, Column, Row, Padding, SizedBox, Form, TextFormField, ListView.builder, Card, ListTile, SnackBar, CircleAvatar, CircularProgressIndicator

---

## Navigasi
Menggunakan Named Routes:
- `/` → Login  
- `/forgot` → Lupa Password  
- `/dashboard` → Dashboard  

---

## Assets
Gambar/logo disimpan dalam folder:
assets/  

Dan didaftarkan di pubspec.yaml:
flutter:
  assets:
    - assets/icon.png

---

## Cara Menjalankan
1. Clone repository:
git clone https://github.com/username/absensi-mahasiswa-rsk.git  

2. Masuk ke folder project:
cd absensi-mahasiswa-rsk  

3. Jalankan:
flutter pub get  

4. Run aplikasi:
flutter run  

---

## 📱 Tampilan Aplikasi

### 🔐 Halaman Login
![Login](https://imgur.com/cwcP1RY.png)

Halaman login digunakan untuk autentikasi pengguna sebelum masuk ke dalam aplikasi.  
Pengguna diminta untuk memasukkan email dan password yang telah terdaftar.  
Tersedia juga fitur **“Lupa Password”** untuk membantu pengguna yang mengalami kendala saat login.

---

### 🔑 Halaman Lupa Password
![Lupa Password](https://imgur.com/gZVzgBn.png)

Halaman ini digunakan untuk melakukan reset password.  
Pengguna dapat memasukkan email yang terdaftar untuk menerima instruksi penggantian password.  
Terdapat tombol **kembali (back)** untuk kembali ke halaman login.

---

### 📊 Halaman Dashboard
![Dashboard](https://imgur.com/dlKEbra.png)

Dashboard merupakan halaman utama setelah pengguna berhasil login.  
Pada halaman ini ditampilkan informasi utama aplikasi serta navigasi ke fitur-fitur yang tersedia.

---

## Kesimpulan
Aplikasi ini dibuat sederhana namun sudah memenuhi semua ketentuan UTS yaitu memiliki 3 halaman utama, validasi form, state management menggunakan setState, navigasi antar halaman, serta tampilan dashboard dengan list data.

---

## Catatan
Aplikasi ini dibuat sebagai tugas Ujian Tengah Semester (UTS) mata kuliah Mobile Programming menggunakan Flutter.
