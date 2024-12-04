import 'package:anti_java/home_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const  MyApp());
}
//aâ

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hải sản',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProductListScreen(),
    );
  }
}
