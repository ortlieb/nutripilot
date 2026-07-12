import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'localization/app_localizations.dart';
import 'features/recipes/recipe_provider.dart';
import 'features/recipes/recipe_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => RecipeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriPilot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      supportedLocales: const [
        Locale('de'),
        Locale('en'),
        Locale('pt'),
        Locale('es'),
        Locale('it'),
        Locale('fr'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const RecipeListScreen(),
    );
  }
}
