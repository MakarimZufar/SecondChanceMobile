import 'package:flutter/material.dart';
import 'package:second_chance_mobile/screens/productentry_form.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

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

  @override
  Widget build(BuildContext context) {
    return Material(
      color: getColor(), // Pakai warna yang ditentukan oleh fungsi getColor
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("Kamu telah menekan tombol ${item.name}!"),
            ));
          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductEntryFormPage()),
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
