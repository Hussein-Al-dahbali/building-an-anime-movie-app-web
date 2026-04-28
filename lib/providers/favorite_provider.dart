import 'package:flutter/material.dart';
import 'package:provider_app/anime_data.dart';

class FavoriteProvider with ChangeNotifier {
  final List<Anime> _favorites = [];

  List<Anime> get favorites => _favorites;

  void toggleFavorite(Anime anime) {
    if (_favorites.contains(anime)) {
      _favorites.remove(anime);
    } else {
      _favorites.add(anime);
    }
    notifyListeners();
  }

  // معرفة إذا العنصر مفضل
  bool isFavorite(Anime anime) {
    return _favorites.contains(anime);
  }
}