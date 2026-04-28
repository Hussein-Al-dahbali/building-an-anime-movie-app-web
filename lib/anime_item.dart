import 'package:flutter/material.dart';
import 'package:provider_app/anime_data.dart';
import 'package:provider/provider.dart';
import '../providers/favorite_provider.dart';
import '../providers/cart_provider.dart';

class AnimeItem extends StatelessWidget {
  final Anime anime;

  const AnimeItem({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    final fav = context.watch<FavoriteProvider>();

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [

          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  anime.image,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),


              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    context.read<FavoriteProvider>().toggleFavorite(anime);
                  },
                  icon: Icon(
                    fav.isFavorite(anime)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ),


              Positioned(
                bottom: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {
                    context.read<CartProvider>().addToCart(anime);
                  },
                  icon: const Icon(Icons.add_shopping_cart,color: Colors.blueAccent,),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(anime.name),
                Text("${anime.price} \$"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}