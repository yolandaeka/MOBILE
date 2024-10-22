import 'package:flutter/material.dart';
import 'package:belanja_fashion/pages/loginpage.dart';
// import 'login_page.dart'; // Import halaman login

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background putih
      body: Stack(
        children: [
          // Gambar full screen
          Positioned.fill(
            child: Image.asset(
              'assets/background.png', // Ganti dengan path gambar
              fit: BoxFit.cover, // Agar gambar memenuhi seluruh layar
            ),
          ),
          // Konten di atas gambar
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to Amanda Fashion Store',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF17A2B8),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(
                        0xFF17A2B8), // Warna button (gunakan warna hex #17A2B8)
                    foregroundColor:
                        Colors.white, // Warna teks pada button (warna putih)
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          20), // Membuat radius bulat 20px
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15), // Padding internal tombol
                  ),
                  child: const Text(
                    'Login Now',
                    style: TextStyle(
                      fontSize: 16, // Ukuran font teks pada button
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
