# Second Chance Mobile
Second Chance Mobile adalah platform e-commerce yang menjual barang preloved dengan fokus pada keberlanjutan dan penghematan. Dibuat dengan Flutter untuk pengalaman pengguna yang responsif dan modern.

## Daftar Isi
- [Fitur](#fitur)
- [Struktur Folder](#struktur-folder)
- [Tugas 7](#tugas-7)

## Fitur
Lihat Daftar Produk: Menampilkan semua produk yang tersedia dengan tampilan yang rapi.
Tambah Produk: Memungkinkan pengguna untuk menambahkan produk baru.
Logout: Keluar dari aplikasi dengan cepat dan mudah.

## Struktur Folder
``` plaintext
second_chance_mobile/
├── android/
│   ├── app/
│   │   ├── src/
│   │   │   ├── debug/
│   │   │   │   └── AndroidManifest.xml
│   │   │   ├── main/
│   │   │   │   ├── java/
│   │   │   │   └── res/
│   │   │   └── profile/
│   └── build.gradle
├── ios/
│   ├── Flutter/
│   ├── Runner/
│   │   ├── Assets.xcassets/
│   │   ├── Base.lproj/
│   │   ├── AppDelegate.swift
│   │   ├── Info.plist
│   │   └── MainFlutterWindow.swift
│   ├── Runner.xcodeproj/
│   └── Runner.xcworkspace/
├── lib/
│   ├── main.dart
│   └── menu.dart
├── linux/
│   ├── flutter/
│   ├── CMakeLists.txt
│   └── main.cc
├── macos/
│   ├── Flutter/
│   ├── Runner/
│   │   ├── Assets.xcassets/
│   │   ├── Base.lproj/
│   ├── Runner.xcodeproj/
│   └── Runner.xcworkspace/
├── test/
│   └── widget_test.dart
├── web/
│   ├── icons/
│   │   ├── Icon-192.png
│   │   ├── Icon-512.png
│   │   ├── Icon-maskable-192.png
│   │   └── Icon-maskable-512.png
│   ├── favicon.png
│   ├── index.html
│   └── manifest.json
├── windows/
│   ├── flutter/
│   ├── runner/
│   │   ├── resources/
│   │   ├── CMakeLists.txt
│   │   ├── flutter_window.cpp
│   │   └── main.cpp
├── .metadata
├── analysis_options.yaml
├── pubspec.lock
├── pubspec.yaml
└── README.md
```

## Tugas 7
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
   stateless adalah widget yang bersifat statis dan tidak memiliki state (data yang berubah) selama aplikasi berjalan. Tampilan atau     perilaku dari widget ini tetap sama setelah pertama kali dibangun
2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    -  Scaffold: Menyediakan struktur dasar halaman dengan AppBar, Body, dan FloatingActionButton.
    -  AppBar: Menampilkan bar di bagian atas layar dengan judul aplikasi.
    -  Text: Menampilkan teks statis di layar.
    -  Icon: Menampilkan ikon sesuai dengan fungsi tombol, seperti ikon store, add, atau logout.
    -  GridView: Menyusun tombol dalam bentuk grid untuk membuat tata letak yang rapi dan responsif.
    -  InkWell: Menambahkan efek klik pada tombol dan mendeteksi aksi tap.
    -  Snackbar: Menampilkan notifikasi sementara di bagian bawah layar saat tombol ditekan.
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
   setstate() adalah metode pada statefulwidget yang digunakan untuk memberitahu flutter bahwa terdapat perubahan pada state widget      tersebut sehingga tampilan akan di perbarui
4. Jelaskan perbedaan antara const dengan final.
   -  const digunakan untuk variabel atau widget yang nilai dan definisinya bersifat tetap pada waktu kompilasi, artinya tidak bisa         berubah sama sekali dan harus sudah diketahui saat kode dikompilasi.
   -  final digunakan untuk variabel yang nilai tetap setelah diinisialisasi, namun nilainya bisa diinisialisasi saat runtime.              Variabel final tidak bisa diubah setelah pertama kali diberikan nilai, tetapi nilai ini tidak harus diketahui saat kompilasi.
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
###  Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
Buka Terminal (bisa di IDE seperti VS Code atau terminal bawaan OS).
Jalankan Perintah untuk Membuat Proyek Baru:
   ``` bash
   flutter create second_chance_mobile
   ```
   Ini akan membuat folder proyek baru bernama second_chance_mobile dengan struktur dasar aplikasi Flutter.
Masuk ke Direktori Proyek:
   ```bash
   cd second_chance_mobile
   ```
Buka Proyek di Editor: Kamu bisa membuka folder ini di editor kode, seperti VS Code, dengan perintah:
   ``` bash
   code .
   ```
edit aplikasi sesuai design
Jalankan Proyek untuk Testing: Jalankan aplikasi di emulator atau perangkat fisik dengan perintah:
   ``` bash
   flutter run
   ```
### Membuat tiga tombol sederhana dengan ikon dan teks untuk:
1. Melihat daftar produk (Lihat Daftar Produk)
2. Menambah produk (Tambah Produk)
3. Logout (Logout)
``` dart
final List<ItemHomepage> items = [
      ItemHomepage(
          "Lihat Daftar Produk", Icons.store), // Cocok untuk daftar produk
      ItemHomepage("Tambah Produk",
          Icons.add_box), // Ikon yang lebih representatif untuk menambah
      ItemHomepage(
          "Logout", Icons.exit_to_app), // Logout tetap pakai yang familiar
    ];
```
### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
``` dart
Widget build(BuildContext context) {
    return Material(
      color: getColor(),
```
selain menambahkan code di atas kita juga menambahkan fungsi get color
``` dart
Color getColor() {
    switch (item.name) {
      case "Lihat Daftar Produk":
        return Colors.blue; // Warna untuk tombol "Lihat Daftar Produk"
      case "Tambah Produk":
        return Colors.green; // Warna untuk tombol "Tambah Produk"
      case "Logout":
        return Colors.red; // Warna untuk tombol "Logout"
      default:
        return Colors.grey; // Default warna jika ada yang lain
    }
  }
```

### Memunculkan Snackbar dengan tulisan:
 "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
 "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
 "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
``` dart
onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("Kamu telah menekan tombol ${item.name}!"),
            ));
        },
```
