import 'package:flutter/material.dart';
import 'package:astro_app/core/theme/app_theme.dart';
import 'package:astro_app/features/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: MainNavigation(), // ✅ SEM const
    );
  }
}
