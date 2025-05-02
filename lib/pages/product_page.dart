import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';
import '../models/product.dart';
import 'cart_page.dart';

class ProductPage extends StatelessWidget {
  final CartController cartController = Get.find();

  final List<Product> products = List.generate(
    5,
        (index) => Product(
      id: index,
      name: 'Product $index',
      price: (10 + index * 5).toDouble(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Get.to(() => CartPage()),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (_, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: ElevatedButton(
              child: Text('Add to Cart'),
              onPressed: () => cartController.addToCart(product),
            ),
          );
        },
      ),
    );
  }
}
