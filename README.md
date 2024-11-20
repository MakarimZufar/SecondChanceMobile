# Second Chance Mobile

Second Chance Mobile adalah platform e-commerce yang menjual barang preloved dengan fokus pada keberlanjutan dan penghematan. Dibuat dengan Flutter untuk pengalaman pengguna yang responsif dan modern.

## Daftar Isi

-   [Fitur](#fitur)
-   [Tugas 7](#tugas-7)
-   [Tugas 8](#tugas-8)
-   [Tugas 9](#tugas-9)
## Fitur

Lihat Daftar Produk: Menampilkan semua produk yang tersedia dengan tampilan yang rapi.
Tambah Produk: Memungkinkan pengguna untuk menambahkan produk baru.
Logout: Keluar dari aplikasi dengan cepat dan mudah.

## Tugas 7

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
   stateless adalah widget yang bersifat statis dan tidak memiliki state (data yang berubah) selama aplikasi berjalan. Tampilan atau perilaku dari widget ini tetap sama setelah pertama kali dibangun
2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    - Scaffold: Menyediakan struktur dasar halaman dengan AppBar, Body, dan FloatingActionButton.
    - AppBar: Menampilkan bar di bagian atas layar dengan judul aplikasi.
    - Text: Menampilkan teks statis di layar.
    - Icon: Menampilkan ikon sesuai dengan fungsi tombol, seperti ikon store, add, atau logout.
    - GridView: Menyusun tombol dalam bentuk grid untuk membuat tata letak yang rapi dan responsif.
    - InkWell: Menambahkan efek klik pada tombol dan mendeteksi aksi tap.
    - Snackbar: Menampilkan notifikasi sementara di bagian bawah layar saat tombol ditekan.
3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
   setstate() adalah metode pada statefulwidget yang digunakan untuk memberitahu flutter bahwa terdapat perubahan pada state widget tersebut sehingga tampilan akan di perbarui
4. Jelaskan perbedaan antara const dengan final.
    - const digunakan untuk variabel atau widget yang nilai dan definisinya bersifat tetap pada waktu kompilasi, artinya tidak bisa berubah sama sekali dan harus sudah diketahui saat kode dikompilasi.
    - final digunakan untuk variabel yang nilai tetap setelah diinisialisasi, namun nilainya bisa diinisialisasi saat runtime. Variabel final tidak bisa diubah setelah pertama kali diberikan nilai, tetapi nilai ini tidak harus diketahui saat kompilasi.
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

### Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.

Buka Terminal (bisa di IDE seperti VS Code atau terminal bawaan OS).
Jalankan Perintah untuk Membuat Proyek Baru:

```bash
flutter create second_chance_mobile
```

Ini akan membuat folder proyek baru bernama second_chance_mobile dengan struktur dasar aplikasi Flutter.
Masuk ke Direktori Proyek:

```bash
cd second_chance_mobile
```

Buka Proyek di Editor: Kamu bisa membuka folder ini di editor kode, seperti VS Code, dengan perintah:

```bash
code .
```

edit aplikasi sesuai design
Jalankan Proyek untuk Testing: Jalankan aplikasi di emulator atau perangkat fisik dengan perintah:

```bash
flutter run
```

### Membuat tiga tombol sederhana dengan ikon dan teks untuk:

1. Melihat daftar produk (Lihat Daftar Produk)
2. Menambah produk (Tambah Produk)
3. Logout (Logout)

```dart
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

```dart
Widget build(BuildContext context) {
    return Material(
      color: getColor(),
```

selain menambahkan code di atas kita juga menambahkan fungsi get color

```dart
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

```dart
onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("Kamu telah menekan tombol ${item.name}!"),
            ));
        },
```

## Tugas 8

### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

const di Flutter berguna untuk mendeklarasikan objek yang bersifat konstan, artinya nilai objek tersebut sudah tetap sejak kompilasi dan tidak akan berubah selama runtime. Penggunaan const di Flutter sangat berguna untuk mengoptimalkan performa aplikasi.

Keuntungan Menggunakan const:

1. Optimasi Memori: Objek const disimpan hanya sekali di memori. Jika beberapa widget membutuhkan objek yang sama (seperti warna, padding, atau teks yang konstan), Flutter hanya membuat satu instance objek tersebut. Jadi, dengan const, kita menghemat memori dan meningkatkan efisiensi.

2. Performa yang Lebih Cepat: Karena objek const tidak berubah, Flutter tidak perlu merebuild objek tersebut saat widget dipanggil ulang. Ini membuat rendering lebih cepat karena objek tidak perlu dibuat kembali.

3. Pengurangan Overhead Garbage Collection: Dengan const, Flutter mengurangi kebutuhan pembersihan memori untuk objek yang tidak digunakan lagi, karena objek const selalu ada di memori selama aplikasi berjalan.

Kapan Sebaiknya Menggunakan const:

1. Pada Nilai yang Tetap: Gunakan const untuk nilai tetap yang tidak akan berubah seperti warna, padding, atau margin.

2. Widget yang Tidak Perlu Diperbarui: Untuk widget yang tidak akan berubah seperti Text atau Icon dengan properti tetap.
   Pembuatan Struktur UI Statis: Pada komponen yang sifatnya statis, terutama dalam nested widget, const berguna karena mengurangi beban rendering dan mempercepat load UI.

Kapan Sebaiknya Tidak Menggunakan const:

1. Objek yang Berubah-ubah: Jika suatu objek atau widget membutuhkan update berdasarkan interaksi pengguna atau variabel yang dinamis, maka const tidak bisa digunakan.

2. Stateful Widgets: Untuk widget yang membutuhkan setState atau mengalami perubahan nilai selama runtime, hindari const.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini

Di Flutter, Column dan Row adalah dua widget layout dasar yang memungkinkan kita mengatur posisi elemen secara vertikal (untuk Column) dan horizontal (untuk Row). Kedua widget ini berguna untuk membangun struktur UI dan sering digunakan bersama untuk membentuk tampilan yang kompleks.

Perbandingan `Column` vs `Row`

| Aspek      | Column                                                                         | Row                                                               |
| ---------- | ------------------------------------------------------------------------------ | ----------------------------------------------------------------- |
| Orientasi  | Mengatur widget secara **vertikal**                                            | Mengatur widget secara **horizontal**                             |
| Cross Axis | Mengatur elemen pada **horizontal** axis                                       | Mengatur elemen pada **vertical** axis                            |
| Main Axis  | Elemen ditumpuk dari **atas ke bawah**                                         | Elemen ditumpuk dari **kiri ke kanan**                            |
| Scroll     | Biasanya memerlukan `SingleChildScrollView` jika isi terlalu banyak (overflow) | Sama, memerlukan `SingleChildScrollView` untuk mengatasi overflow |
| Alignment  | Dapat diatur dengan `CrossAxisAlignment` dan `MainAxisAlignment`               | Sama, memiliki properti alignment yang serupa                     |

Contoh Implementasi Column

```dart
import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Item 1'),
            Text('Item 2'),
            Text('Item 3'),
          ],
        ),
      ),
    );
  }
}
```

visualisasi hasil

```markdown
--------------------------|
| Column Example |
--------------------------|
| |
| Item 1 |
| Item 2 |
| Item 3 |
| |
--------------------------|
```

contoh implementasi row

```dart
import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.star, color: Colors.blue),
            Text('Row Item 1'),
            Text('Row Item 2'),
          ],
        ),
      ),
    );
  }
}
```

contoh visualisasi

```markdown
--------------------------------|
| Row Example |
--------------------------------|
| |
| Row Item 1 Row Item 2 |
| |
--------------------------------|
```

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan

Di Flutter, terdapat banyak elemen input yang bisa digunakan untuk membuat form yang interaktif dan menarik. Berikut adalah beberapa elemen input umum yang sering digunakan pada form, serta beberapa elemen input yang mungkin tidak selalu diperlukan dalam setiap tugas form.

untuk tugas ini saya baru menggunakan TextFormField
Digunakan untuk memasukkan teks seperti nama, Deskripsi, harga.
Mendukung validasi, yang memudahkan untuk mengontrol input pengguna.

elemen yang tidak saya gunakan:

1. Checkbox
   Cocok digunakan untuk pilihan ya/tidak atau persetujuan, seperti "Setuju dengan syarat dan ketentuan".

2. Radio Button
   Berguna untuk memilih satu opsi dari beberapa pilihan. Misalnya, untuk memilih jenis kelamin atau kategori tertentu.

3. DropdownButtonFormField
   Elemen input ini sangat berguna jika pengguna perlu memilih dari daftar pilihan yang lebih panjang. Contoh penggunaannya adalah pemilihan kota atau negara.

4. Switch
   Sama seperti checkbox, tetapi tampilannya lebih modern dan cocok digunakan untuk pilihan aktif/nonaktif, seperti pengaturan notifikasi.

5. Slider
   Slider digunakan untuk memilih nilai dalam rentang tertentu, misalnya untuk memilih usia atau volume.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Mengatur tema dalam aplikasi Flutter penting untuk menjaga konsistensi tampilan, sehingga setiap elemen UI memiliki warna, font, dan style yang seragam. Tema di Flutter diatur menggunakan ThemeData, yang memungkinkan kita untuk mengelola berbagai aspek tampilan aplikasi.

Cara Mengatur Tema di Flutter
Dalam Flutter, kita bisa mengatur tema dengan cara berikut:

1. Mendefinisikan ThemeData di level aplikasi, sehingga tema ini berlaku untuk seluruh widget yang ada di aplikasi.

2. Menggunakan Theme.of(context) untuk mengakses tema saat ini dan mengaplikasikan gaya khusus pada widget tertentu.

3. Mengimplementasikan Dark Mode dan Light Mode dengan memanfaatkan brightness di ThemeData.

ya saya mengiplementasi tema pada aplikasi yang saya buat.

### pembuatan tugas 8

1. pembuatan left drawer

```dart
import 'package:flutter/material.dart';
import 'package:second_chance_mobile/screens/menu.dart';
import 'package:second_chance_mobile/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Second Chance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Ubah barang tidak terpakai mu menjadi uang",
                    style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                ),
              ],
            ),
              ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: const Text('Tambah Barang'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
          builder: (context) => ProductEntryFormPage(),
          ));
            },
          ),
        ],
      ),
    );
  }
}
```

2. pembuatan form input data

```dart
import 'package:flutter/material.dart';
import 'package:second_chance_mobile/widgets/left_drawer.dart';

class ProductEntryFormPage extends StatefulWidget {
  const ProductEntryFormPage({super.key});

  @override
  State<ProductEntryFormPage> createState() => _ProductEntryFormPageState();
}

class _ProductEntryFormPageState extends State<ProductEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _description = "";
  int _price = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Barang Kamu yang Sudah Tidak Terpakai',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Description",
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Deskripsi tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Product Price",
                  labelText: "Product Price",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _price = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Harga tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Harga intensity harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Product berhasil tersimpan'),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Name: $_name'),
                                  Text('Description: $_description'),
                                  Text('Price: $_price'),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  _formKey.currentState!.reset();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
          )
        ),
      ),
    );
  }
}
```

3. melakukan refactoring files dengan menambahkan screens direktori.

## Tugas 9

### Mengapa Kita Perlu Membuat Model untuk Melakukan Pengambilan atau Pengiriman Data JSON? Apakah Akan Terjadi Error Jika Kita Tidak Membuat Model Terlebih Dahulu?

Model diperlukan untuk mengatur struktur data JSON sehingga pengambilan dan pengiriman data menjadi lebih terorganisasi dan konsisten. Tanpa model, kita harus memproses data mentah secara manual, yang rentan terhadap kesalahan, terutama jika format data berubah. Membuat model memastikan validasi, kemudahan manipulasi data, dan pengurangan duplikasi kode. Jika kita tidak membuat model, kemungkinan besar error tidak langsung terjadi, tetapi pengelolaan data akan menjadi sulit dan rentan terhadap bug.

### Fungsi dari Library http yang Sudah Diimplementasikan

Library http digunakan untuk melakukan request HTTP, seperti GET, POST, PUT, dan DELETE, ke server. Dalam tugas ini, http membantu mengambil data produk dari server Django dan mengirimkan data form input dari Flutter ke backend. Hal ini memungkinkan integrasi penuh antara frontend (Flutter) dan backend (Django).

### Fungsi dari CookieRequest dan Alasan Membagi Instance ke Semua Komponen di Aplikasi Flutter

CookieRequest digunakan untuk mengelola cookie, menjaga sesi pengguna tetap aktif, dan memungkinkan request HTTP dilakukan dengan autentikasi menggunakan cookie. Membagikan instance CookieRequest memastikan bahwa semua komponen Flutter berbagi sesi pengguna yang sama, sehingga tidak perlu mengatur ulang autentikasi di setiap layar atau request.

### Mekanisme Pengiriman Data dari Input Hingga Dapat Ditampilkan pada Flutter

Input Data: Pengguna memasukkan data di form Flutter (menggunakan TextFormField).
Validasi: Data divalidasi di sisi Flutter sebelum dikirim ke backend.
Pengiriman Data: Flutter mengirimkan data menggunakan metode POST melalui http atau CookieRequest.
Penyimpanan di Backend: Django menerima data, memprosesnya, dan menyimpannya di database.
Pengambilan Data: Flutter mengambil data terbaru menggunakan metode GET.
Tampilan di UI: Data JSON yang diterima di-parse ke model dan ditampilkan dalam widget Flutter.

### Mekanisme Autentikasi dari Login, Register, Hingga Logout

Login:
Pengguna memasukkan data login di Flutter.
Flutter mengirim data ke endpoint login Django menggunakan CookieRequest.
Jika berhasil, server Django mengembalikan cookie sesi, yang disimpan oleh Flutter untuk autentikasi berikutnya.
Register:
Pengguna memasukkan data registrasi di Flutter.
Flutter mengirimkan data ke endpoint registrasi Django.
Jika berhasil, pengguna diarahkan ke halaman login.
Logout:
Flutter mengirimkan request logout ke server Django.
Server menghapus sesi, dan Flutter menghapus cookie lokal.

### membuat aplikasi step by step

Berikut langkah-langkah implementasi integrasi autentikasi dan networking pada aplikasi "Second Chance Mobile":

Persiapan Backend Django

Pastikan backend menggunakan framework Django dengan aplikasi yang sudah dikonfigurasi untuk menyediakan endpoint REST API.
Gunakan django-rest-framework untuk menyediakan API, termasuk endpoint untuk login, logout, register, dan data lain yang diperlukan.
Buat model data yang sesuai untuk mengelola produk dan autentikasi pengguna.
Instalasi dan Konfigurasi Dependency Flutter

Tambahkan package http dan pbp_django_auth ke dalam pubspec.yaml.
http digunakan untuk komunikasi HTTP dengan server, sedangkan pbp_django_auth untuk autentikasi berbasis cookie di Django.
Pastikan dependency telah terpasang dengan menjalankan perintah flutter pub get.
Membuat Instance CookieRequest

Buat sebuah instance CookieRequest yang digunakan untuk mengelola autentikasi dan sesi pengguna.
Instance ini harus bersifat global atau dapat diakses oleh semua layar aplikasi.
Membangun Halaman Login dan Register

Buat halaman untuk login dan register menggunakan widget Flutter seperti TextFormField untuk input dan ElevatedButton untuk aksi.
Validasi data input pengguna sebelum dikirim ke server.
Kirimkan data login dan register ke endpoint Django menggunakan CookieRequest. Jika berhasil, simpan cookie sesi untuk digunakan dalam request selanjutnya.
Membuat Drawer Navigasi untuk Aplikasi

Tambahkan drawer navigasi pada aplikasi untuk memberikan akses cepat ke fitur utama seperti menampilkan daftar produk, menambah produk, dan logout.
Pastikan setiap item di drawer diarahkan ke halaman atau fungsi yang relevan.
Membuat Halaman Tambah Produk

Buat halaman form untuk menambah produk.
Form ini terdiri dari beberapa input seperti nama, deskripsi, dan harga produk.
Validasi data sebelum mengirimkannya ke backend melalui request POST menggunakan http atau CookieRequest.
Menampilkan Daftar Produk

Gunakan request GET untuk mengambil data produk dari server Django.
Tampilkan data yang diterima dalam bentuk list atau grid menggunakan widget seperti ListView atau GridView.
Autentikasi Logout

Implementasikan fitur logout dengan menghapus sesi pengguna di backend dan menghapus cookie di aplikasi Flutter.
Setelah logout, arahkan pengguna kembali ke halaman login.
Refactoring dan Konsistensi UI

Pastikan semua halaman menggunakan tema yang konsisten dengan mendefinisikan ThemeData di level aplikasi.
Terapkan dark mode dan light mode untuk meningkatkan pengalaman pengguna.
Testing dan Debugging

Jalankan aplikasi pada emulator atau perangkat fisik untuk memastikan semua fitur berfungsi dengan baik.
Debug masalah yang muncul dan pastikan tidak ada error dalam komunikasi dengan backend.
