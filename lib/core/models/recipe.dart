class Recipe {
  final String id;
  final String title;
  final String description;
  final List<String> ingredients;
  final List<String> instructions;
  final int prepTime;        // in Minuten
  final int servings;        // Portionen
  final String? imageUrl;
  final String? category;    // z.B. "Fisch", "High-Protein", "Sommerlich"

  Recipe({
    required this.id,
    required this.title,
    required this.description,
    required this.ingredients,
    required this.instructions,
    required this.prepTime,
    required this.servings,
    this.imageUrl,
    this.category,
  });

  List<String> getScaledIngredients(int newServings) {
    double factor = newServings / servings;
    return ingredients.map((ing) {
      final parts = ing.split(' ');
      final amount = double.tryParse(parts.first) ?? 1.0;
      final rest = parts.sublist(1).join(' ');
      return '${(amount * factor).round()} $rest';
    }).toList();
  }
}
