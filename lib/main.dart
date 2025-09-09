import 'package:flutter/material.dart';
import 'package:flutter_application_shopping/widget/grocery_list.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData.dark().copyWith(
  //useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 131, 57, 0),
    brightness: Brightness.dark,
    //surface: const Color.fromARGB(255, 42, 32, 46),
  ),
  //scaffoldBackgroundColor: const Color.fromARGB(255, 50, 45, 65),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const GroceryList(),
    );
  }
}
