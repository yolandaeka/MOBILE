import 'package:flutter/material.dart';
import 'package:belanja_fashion/pages/aboutpage.dart';
import 'package:belanja_fashion/pages/profilepage.dart';

class HomePage extends StatelessWidget {
  final String username;

  // Constructor untuk menerima username dari halaman login
  HomePage({required this.username});

  final List<Product> products = [
    Product(
      imageUrl: 'assets/produk1.jpg', // Gambar Produk 1
      name: 'Elizabeth Tunic',
      price: 10000,
    ),
    Product(
      imageUrl: 'assets/produk2.jpg', // Gambar Produk 2
      name: 'Aurora Dress',
      price: 20000,
    ),
    Product(
      imageUrl: 'assets/produk3.jpg', // Gambar Produk 3
      name: 'Summer Dress',
      price: 30000,
    ),
    Product(
      imageUrl: 'assets/produk4.jpg', // Gambar Produk 4
      name: 'Batik Tunic',
      price: 40000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Pagi, $username!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Katalog Produk
            Text(
              'Katalog Produk',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),

            // List Produk
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom
                  childAspectRatio: 0.7, // Rasio tinggi dan lebar kartu
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: products[index],
                    onBuyNow: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Anda membeli ${products[index].name}')),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 0, // Set Beranda sebagai halaman awal
        selectedItemColor: Colors.blue,
        onTap: (int index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage(username: username)),
            );
          }
        },
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String name;
  final double price;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onBuyNow;

  const ProductCard({
    required this.product,
    required this.onBuyNow,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            product.imageUrl,
            height: 200,
            width: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            product.name,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.0),
          Text(
            'Rp ${product.price.toString()}',
            style: TextStyle(color: Colors.green),
          ),
           
           SizedBox(height: 10),

            // Tombol Sign In
            ElevatedButton(
              onPressed: () {
               
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF17A2B8), // Warna tombol
       // Lebar tombol penuh
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                ),
              ),
              child: Text('Buy Now',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
        ],
      ),
    );
  }
}
