import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'recipe_provider.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<RecipeProvider>(context);
    final recipes = provider.recipes;

    return Scaffold(
      appBar: AppBar(title: const Text('Rezepte')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: recipe.imageUrl != null 
                  ? Image.network(recipe.imageUrl!, width: 60, height: 60, fit: BoxFit.cover)
                  : const Icon(Icons.food_bank, size: 60),
              title: Text(recipe.title),
              subtitle: Text('${recipe.prepTime} Min. • ${recipe.servings} Portionen'),
              trailing: Text(recipe.category ?? ''),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Öffne: ${recipe.title}')),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('KI-Rezept-Generator kommt bald...')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
