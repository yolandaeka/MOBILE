// ignore_for_file: unused_element

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Memindahkan titleSection ke dalam build method agar bisa digunakan dalam widget tree
    Color color = Theme.of(context).primaryColor;

    // Memindahkan titleSection ke dalam build method agar bisa digunakan dalam widget tree
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          const Icon(
            Icons.star,
            size: 18,
            color: Colors.red,
          ),
          const Text(
            "41",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Wisata gunung di Kota Batu, Malang, menawarkan pemandangan alam yang indah dengan udara sejuk dan spot-spot menarik. Dikelilingi oleh Gunung Panderman, Arjuno, dan Kawi, destinasi ini cocok untuk trekking, hiking, dan menikmati alam.'
        'Kota Batu menjadi pilihan favorit bagi wisatawan yang ingin bersantai dan menikmati keindahan pegunungan.\n\n'
        'Yolanda Ekaputri Setyawan | 2241760028',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Yolanda 2241760028',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // Menambahkan titleSection ke dalam body
        body: Column(
          children: [
            Image.asset(
              'assets/SS5.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection, // Tambahkan buttonSection ke body
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.blue),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
