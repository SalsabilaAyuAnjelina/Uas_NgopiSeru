// favorite_page.dart
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  final List<Map<String, String>> favoriteItems;

  FavoritePage({required this.favoriteItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Items'),
      ),
      body: ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return ListTile(
            title: Text(item['title']!),
            subtitle: Text(item['description']!),
            trailing: Text(item['price']!),
          );
        },
      ),
    );
  }
}
