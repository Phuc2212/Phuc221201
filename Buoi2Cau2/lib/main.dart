import 'package:flutter/material.dart';
import 'product_list_screen.dart';
import 'product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danh Sách Sản Phẩm',
      initialRoute: '/', // Màn hình bắt đầu khi ứng dụng được chạy
      routes: {
        '/': (context) => ProductListScreen(),
        '/product_detail': (context) => ProductDetailScreen(),
      },
    );
  }
}
