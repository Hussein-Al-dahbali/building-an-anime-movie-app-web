import 'package:flutter/material.dart';
import 'package:provider_app/anime_data.dart';

class DetailsScreen extends StatelessWidget {
  final Anime anime;

  const DetailsScreen({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(anime.name)),

      body: Column(
        children: [
          Image.asset(anime.image),
          Text(anime.name),
          Text("${anime.price} \$"),
        ],
      ),
    );
  }
}