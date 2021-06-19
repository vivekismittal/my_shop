import '../providers/products.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/product_grid.dart';
class ProductOverviewScreen extends StatelessWidget {
  // final List<Product> loadedProducts =
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return Scaffold(
      appBar: AppBar(
        title: Text('E-SHOP'),
      ),
      body: ProductsGrid(loadedProducts: products),
    );
  }
}

