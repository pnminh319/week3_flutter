// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:week3_flutter/providers/cart.dart';
import 'package:week3_flutter/providers/drinks.dart';
import 'package:week3_flutter/screen/cartpage.dart';
import 'package:week3_flutter/screen/detailpage.dart';
import 'package:week3_flutter/screen/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        theme:
            ThemeData(primarySwatch: Colors.amber, accentColor: Colors.amber),
        home: const HomePage(),
        routes: {
          DetailPage.routeName: (ctx) => DetailPage(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
