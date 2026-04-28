import 'package:flutter/material.dart';
import 'package:provider_app/anime_data.dart';

class CartProvider with ChangeNotifier {
  final Map<Anime, int> _items = {};

  Map<Anime, int> get items => _items;


  void addToCart(Anime anime) {
    if (_items.containsKey(anime)) {
      _items[anime] = _items[anime]! + 1;
    } else {
      _items[anime] = 1;
    }
    notifyListeners();
  }


  void removeFromCart(Anime anime) {
    _items.remove(anime);
    notifyListeners();
  }


  double get totalPrice {
    double total = 0;
    _items.forEach((anime, qty) {
      total += anime.price * qty;
    });
    return total;
  }
}