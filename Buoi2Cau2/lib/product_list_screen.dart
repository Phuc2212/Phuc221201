import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  // Giả lập danh sách sản phẩm
  final List<String> products = [
    'Sản phẩm 1',
    'Sản phẩm 2',
    'Sản phẩm 3',
    'Sản phẩm 4',
    'Sản phẩm 5',
    'Sản phẩm 6',
    'Sản phẩm 7',
    'Sản phẩm 8',
    'Sản phẩm 9',
    'Sản phẩm 10'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Danh sách sản phẩm'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            onTap: () {
              // Chuyển sang màn hình chi tiết sản phẩm khi sản phẩm được chọn
              Navigator.pushNamed(context, '/product_detail',
                  arguments: products[index]);
            },
          );
        },
      ),
    );
  }
}
