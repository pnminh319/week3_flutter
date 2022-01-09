// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:week3_flutter/providers/cart.dart';
import 'package:week3_flutter/providers/drink.dart';
import 'package:week3_flutter/screen/detailpage.dart';
import 'package:provider/provider.dart';

class ProductItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Drink>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(DetailPage.routeName, arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              onPressed: () {
                cart.addItem(
                    product.id, product.price, product.title, product.imageUrl);
              },
              icon: const Icon(Icons.add)),
        ),
      ),
    );
  }
}
