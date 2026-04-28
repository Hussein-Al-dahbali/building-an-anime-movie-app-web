import 'package:provider_app/anime_data.dart';

class AnimeProvider {

  final List<Anime> _items = [
    Anime(name: "One Piece", image: "image/three.jpg", price: 10),
    Anime(name: "Naruto", image: "image/one.jpg", price: 3),
    Anime(name: "Bleach", image: "image/five.jpg", price: 8),
    Anime(name: "Jujutsu", image: "image/seven.jpg", price: 20),
    Anime(name: "Neverland", image: "image/six.jpg", price: 15),
    Anime(name: "Tokyo Ghoul", image: "image/fore.jpg", price: 5),
  ];


  List<Anime> get items => _items;
}