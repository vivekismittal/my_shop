import 'package:flutter/material.dart';

import '../models/product.dart';
import './product_item.dart';

class ProductsGrid extends StatelessWidget {
  final List<Product> loadedProducts;

  const ProductsGrid({
    @required this.loadedProducts,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: loadedProducts.length,
      itemBuilder: (context, index) => ProductItem(
        loadedProducts[index].id,
        loadedProducts[index].imageUrl,
        loadedProducts[index].title,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
      ),
    );
  }
}
