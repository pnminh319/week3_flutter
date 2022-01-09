import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week3_flutter/providers/cart.dart';
import 'package:week3_flutter/screen/cartpage.dart';
import 'package:week3_flutter/widget/badge.dart';
import 'package:week3_flutter/widget/drinks_overview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch!,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
        ]),
        body: ProductsGrid());
  }
}
