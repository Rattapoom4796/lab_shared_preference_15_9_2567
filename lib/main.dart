import 'package:flutter/material.dart';
import 'package:labshared_pref/pages/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Use Material3 design principles
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlueAccent, // Primary color
          // Define color scheme based on seed color
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
          secondary: Colors.lightBlueAccent.shade200, // Secondary color
          onSecondary: Colors.black,
          surface: const Color.fromARGB(114, 128, 217, 255), // Background color
          onSurface: Colors.black,
          background: Colors.white,
          onBackground: Colors.black,
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade800),
          titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlueAccent),
          bodyLarge:
              TextStyle(fontSize: 16, color: Colors.lightBlueAccent.shade700),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor:
                Colors.deepPurple, // Background color for ElevatedButton
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.teal.shade50,
          prefixIconColor: const Color.fromARGB(255, 3, 115, 104),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 2, 112, 101),
          foregroundColor: Colors.white,
          elevation: 4.0, // Shadow for AppBar
        ),
      ),
      home: const FirstPage(),
    );
  }
}
