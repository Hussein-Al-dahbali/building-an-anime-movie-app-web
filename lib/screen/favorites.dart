import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorite_provider.dart';
import 'package:provider_app/anime_data.dart';
import 'package:provider_app/anime_item.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    final fav = context.watch<FavoriteProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Favorites")),
      body: GridView.builder(
        itemCount: fav.favorites.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, i) {
          return AnimeItem(anime: fav.favorites[i]);
        },
      ),
    );
  }
}