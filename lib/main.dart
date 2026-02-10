import 'package:flutter/material.dart';
import 'Screens/Homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF075E54))
            .copyWith(
              primary: const Color(0xFF075E54),
              secondary: const Color(0xFF128C7E),
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF075E54),
          foregroundColor: Colors.white, // текст и иконки
        ),
      ),
      home: const Homescreen(),
    );
  }
}
