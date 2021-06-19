import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/product_details_screen.dart';
import './providers/products.dart';
import './screens/product_overview-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          colorScheme: ColorScheme.dark(
            primary: Colors.purple,
            primaryVariant: Colors.deepPurple,
            secondary: Colors.orange,
            secondaryVariant: Colors.deepOrange,
            surface: Colors.pinkAccent,
            background: Colors.amber,
            error: Colors.red,
            // onPrimary: Colors.deepOrange,
            // onSecondary: Colors.deepOrange,
            // onSurface: Colors.deepOrange,
            // onBackground: Colors.deepOrange,
            // onError: Colors.deepOrange,
            brightness: Brightness.dark,
          ),
          // fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
        },
      ),
    );
  }
}
