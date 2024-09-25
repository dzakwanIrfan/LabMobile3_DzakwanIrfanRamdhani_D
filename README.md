# Aplikasi Kontak

Aplikasi Kontak adalah aplikasi sederhana yang memungkinkan pengguna untuk menyimpan dan mengelola kontak mereka. Aplikasi ini terdiri dari beberapa halaman, termasuk halaman login, halaman utama, dan halaman untuk menambahkan kontak baru.

## Struktur Proyek

Aplikasi ini terdiri dari beberapa file Dart yang saling terhubung. Berikut adalah penjelasan setiap bagian penting dari kode:

### 1. **main.dart**

File ini adalah titik awal dari aplikasi. Di sini, kita mendefinisikan widget utama dan tema aplikasi.

```dart
void main() {
  runApp(MyApp());
}
```
- `runApp(MyApp())`: Menjalankan aplikasi dengan widget `MyApp`.

#### Kelas `MyApp`

Kelas ini mengatur tema aplikasi dan rute navigasi.

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern App',
      theme: ThemeData(...),
      home: SplashScreen(),
      routes: {
        '/home': (context) => const HomePage(contacts: []),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
```
- **Tema**: Menentukan warna dan font yang digunakan di aplikasi.
- **Rute**: Menentukan halaman-halaman yang bisa dinavigasi, seperti halaman utama dan halaman login.

#### Kelas `SplashScreen`

Menampilkan layar awal saat aplikasi dimuat dan memeriksa status login pengguna.

```dart
class SplashScreen extends StatefulWidget {...}
```
- **_checkLoginStatus**: Memeriksa apakah pengguna sudah login atau belum. Jika sudah, pengguna akan diarahkan ke halaman utama; jika belum, diarahkan ke halaman login.

### 2. **login_page.dart**

File ini menangani proses login pengguna.

#### Kelas `LoginPage`

```dart
class LoginPage extends StatefulWidget {...}
```
- Menggunakan `TextEditingController` untuk menangani input dari pengguna.
- **_login**: Memverifikasi kredensial pengguna dan mengatur status login jika benar.

### 3. **home_page.dart**

Halaman utama aplikasi yang menampilkan daftar kontak.

#### Kelas `HomePage`

```dart
class HomePage extends StatefulWidget {...}
```
- Menampilkan nama pengguna dan daftar kontak yang disimpan.
- **_loadUserData**: Memuat data pengguna dari penyimpanan lokal.
- **ListView**: Menampilkan daftar kontak dalam bentuk daftar.

### 4. **tambah_kontak_page.dart**

Halaman untuk menambahkan kontak baru.

#### Kelas `TambahKontakPage`

```dart
class TambahKontakPage extends StatefulWidget {...}
```
- Menangani input nama dan nomor telepon kontak baru.
- **_saveContact**: Menyimpan kontak baru jika semua field terisi.

### 5. **sidemenu.dart**

Menampilkan menu samping untuk navigasi.

#### Kelas `SideMenu`

```dart
class SideMenu extends StatelessWidget {...}
```
- Mengandung menu navigasi untuk berpindah antara halaman.

## Demo Aplikasi



## Cara Menjalankan Aplikasi

1. Pastikan Anda telah menginstal Flutter dan semua dependensi yang diperlukan.
2. Clone repositori ini.
3. Jalankan perintah berikut di terminal:

   ```bash
   flutter pub get
   flutter run
   ```

Aplikasi ini dibangun menggunakan Flutter dan memanfaatkan SharedPreferences untuk menyimpan data login. Dengan aplikasi ini, Anda dapat dengan mudah menambahkan dan mengelola kontak.
