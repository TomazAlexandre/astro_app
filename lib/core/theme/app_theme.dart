import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0F1020),
    useMaterial3: true,

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        height: 1.4,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        height: 1.4,
        color: Colors.white70,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF14152E),
      selectedItemColor: Color(0xFF8E7CFF),
      unselectedItemColor: Colors.white54,
      showUnselectedLabels: true,
    ),
  );
}
