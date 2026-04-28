import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/anime_item.dart';
import 'package:provider_app/anime_data.dart';

import '../providers/anime_provider.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final animeProvider = AnimeProvider();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Anime Store"),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.pushNamed(context, "/favorites");
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, "/cart");
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: animeProvider.items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, i) {
            return AnimeItem(anime: animeProvider.items[i]);
          },
        ),
      ),
    );
  }
}