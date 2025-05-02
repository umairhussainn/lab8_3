import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/cart_controller.dart';
import 'pages/product_page.dart';

void main() {
  Get.put(CartController()); // 💡 Initialize globally
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping Cart GetX',
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

