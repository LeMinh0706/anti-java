import 'package:anti_java/product_model.dart';
import 'package:anti_java/product_widget.dart';
import 'package:flutter/material.dart';


class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
        name: 'Cá đuối',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpCtpm77UxO3VBrV1po72AmEGut1XdcJeYP0UHSAeUNQOWWT-Epv3ceT7GA7-HAQsxTJs&usqp=CAU'),
    Product(
        name: 'Tôm',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7R3-1HntcJEc566tF4ix-qPuG8H1tWQTWog&s'),

    Product(
        name: 'Tôm tít',
        imageUrl:
            'https://product.hstatic.net/1000182631/product/z5274320472153_c671171d2b1a03f87136ea56e4fe25d7_f666c20c9d7f4e78bd8930f40185ac7d.jpg'),
  ];

  ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Cửa hàng hải sản vũng tàu', style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ProductWidget(
            model: product,
          );
        },
      ),
    );
  }
}
