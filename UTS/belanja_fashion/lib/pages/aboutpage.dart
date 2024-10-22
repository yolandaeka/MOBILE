import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About This App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fashion Store App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Ini adalah aplikasi toko fashion sederhana yang membantu Anda menjelajahi produk'
              'fashion terbaru. Dengan antarmuka yang ramah pengguna, Anda dapat dengan mudah melihat berbagai produk, termasuk gambar, nama, dan harga. Aplikasi ini dirancang untuk memudahkan pengalaman berbelanja Anda dan membuat Anda tetap up-to-date dengan tren fashion terkini.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
