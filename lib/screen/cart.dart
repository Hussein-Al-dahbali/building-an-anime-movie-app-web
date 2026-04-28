import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Cart")),

      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: cart.items.entries.map((entry) {
                return ListTile(
                  title: Text(entry.key.name),
                  subtitle: Text("Qty: ${entry.value}"),
                  trailing: Text("${entry.key.price} \$"),
                );
              }).toList(),
            ),
          ),

          Text(
            "Total: ${cart.totalPrice} \$",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}