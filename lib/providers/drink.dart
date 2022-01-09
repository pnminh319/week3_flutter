import 'package:flutter/foundation.dart';

class Drink with ChangeNotifier {
  final String id;
  final String title;
  final int price;
  final String imageUrl;
  bool isFavorite;
  Drink({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
}
