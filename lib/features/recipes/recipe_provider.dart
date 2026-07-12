import 'package:flutter/material.dart';
import '../../core/models/recipe.dart';

class RecipeProvider with ChangeNotifier {
  List<Recipe> _recipes = [];

  List<Recipe> get recipes => _recipes;

  RecipeProvider() {
    _loadDummyRecipes();
  }

  void _loadDummyRecipes() {
    _recipes = [
      Recipe(
        id: '1',
        title: 'Gegrillter Lachs mit Zitrone',
        description: 'Leichter Sommer-Fisch, perfekt nach dem Training.',
        ingredients: ['400 g Lachsfilet', '2 Zitronen', '2 EL Olivenöl', 'Salz', 'Pfeffer', 'Frischer Dill'],
        instructions: ['Lachs mit Öl und Zitrone marinieren', '5-7 Min. pro Seite grillen', 'Mit Dill servieren'],
        prepTime: 20,
        servings: 2,
        category: 'Fisch',
        imageUrl: 'https://picsum.photos/id/201/300/200',
      ),
      Recipe(
        id: '2',
        title: 'Ceviche mit Avocado',
        description: 'Erfrischendes kaltes Fischgericht bei Hitze.',
        ingredients: ['300 g weißer Fisch', '4 Limetten', '1 Avocado', '1 rote Zwiebel', 'Koriander'],
        instructions: ['Fisch würfeln und in Limettensaft marinieren', 'Gemüse untermischen', '10 Min. ziehen lassen'],
        prepTime: 15,
        servings: 2,
        category: 'Fisch',
        imageUrl: 'https://picsum.photos/id/292/300/200',
      ),
    ];
    notifyListeners();
  }
}
