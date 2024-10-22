import 'package:flutter/material.dart';
import 'package:belanja_fashion/pages/landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // menyambungkan dengan halaman landingpage
      home: const LandingPage(),
    );
  }
}
