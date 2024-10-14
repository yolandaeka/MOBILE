import 'package:flutter/material.dart';
import 'package:flutter_belanja/models/item.dart';

@override
class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000)
  ];
  
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
