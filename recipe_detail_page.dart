import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailPage({required this.recipe});

  @override
  Widget build(BuildContext context) {
    // Here you would typically fetch and display more details about the recipe.
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(recipe.imageUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                recipe.title,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            // Add more details about the recipe here.
          ],
        ),
      ),
    );
  }
}
