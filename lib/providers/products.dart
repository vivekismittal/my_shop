import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://fabindia.com/ccstore/v1/images/?source=/file/v8737312253988322905/products/10528577BU.10406935.F.231216.jpg',
    ),
    Product(
        title: 'Cap',
        description: 'A Cool and Awesome Cap that suits You',
        price: 25.6,
        id: 'p3',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANdGcTT44W7ebPPnd3_XSW07-TElap3bBF4__XtgA&usqp=CAU')
  ];

  List get items {
    return [..._items];
  }

  void addProducts() {
    notifyListeners();
  }
}
