import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/favorite_provider.dart';
import 'providers/cart_provider.dart';
import 'package:provider_app/screen/home.dart';
import 'screen/cart.dart';
import 'screen/favorites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        routes: {
          "/": (context) => const Home(),
          "/favorites": (context) => const Favorites(),
          "/cart": (context) => const Cart(),
        },
      ),
    );
  }
}