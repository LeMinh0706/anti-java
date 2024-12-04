import 'package:anti_java/product_model.dart';
import 'package:flutter/material.dart';

import 'detail_product_screen.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({Key? key, required this.model}) : super(key: key);
  final Product model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: model),
          ),
        );
      },
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.indigo, width: 0.5),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Image.network(
              model.imageUrl,
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                model.name,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const Icon(Icons.add, color: Colors.indigo,)
          ],
        ),
      ),
    );
  }
}
