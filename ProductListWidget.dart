import 'package:flutter/material.dart';
import 'product.dart';
class ProductListWidget extends StatelessWidget {
  final List<Product> productList;
  final Function(int) onDelete;

  ProductListWidget({required this.productList, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return productList.isEmpty
        ? Center(
      child: Text('No Product Found'),
    )
        : ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(productList[index].name),
          subtitle: Text('\$${productList[index].price.toString()}'),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              onDelete(index);
            },
          ),
        );
      },
    );
  }
}
