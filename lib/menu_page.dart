import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  final List<Map<String, String>> menuItems = const [
    {"name": "Espresso Martini", "price": "₱120", "image": "assets/images/espresso_martini.jpg"},
    {"name": "Cappuccino Cincao", "price": "₱150", "image": "assets/images/cappucino_cincao.jpg"},
    {"name": "Matcha Latte", "price": "₱140", "image": "assets/images/matcha_latte.jpg"},
    {"name": "Mocha Mousse", "price": "₱160", "image": "assets/images/mocha_mousse.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Coffee Menu")),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Hero(
                tag: menuItems[index]["name"]!,
                child: AnimatedScale(
                  scale: 1.0,
                  duration: const Duration(milliseconds: 500),
                  child: Image.asset(menuItems[index]["image"]!, width: 50),
                ),
              ),
              title: Text(menuItems[index]["name"]!),
              subtitle: Text(menuItems[index]["price"]!),
            ),
          );
        },
      ),
    );
  }
}