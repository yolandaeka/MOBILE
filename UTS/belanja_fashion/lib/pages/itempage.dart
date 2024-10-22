import 'package:flutter/material.dart';
import 'package:belanja_fashion/models/item.dart'; // Pastikan model Item diimport

class ItemPage extends StatelessWidget {
  final Item item; // Parameter untuk menerima data item

  // Constructor untuk menerima data item
  const ItemPage({super.key, required this.item}); // Parameter 'item' harus ada di constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name), // Menampilkan nama item di AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${item.name} - Rp${item.price}'),
            Text('Stock: ${item.stock}'), // Menampilkan stok
            Text('Rating: ${item.rating}'), // Menampilkan rating
          ],
        ),
      ),
    );
  }
}
