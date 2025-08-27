import 'package:archmage_app/screens/archmage_home_page.dart';
import 'package:archmage_app/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ArchmageApp());
}

class ArchmageApp extends StatelessWidget {
  const ArchmageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Archmage',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: ArchmageHomePage(),
    );
  }
}
