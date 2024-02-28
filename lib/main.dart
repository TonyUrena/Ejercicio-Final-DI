import 'package:flutter/material.dart';
import 'package:spoofy/spoofy_theme.dart';
import 'package:spoofy/spoofy_HomePage.dart';

void main() {
  runApp(const SpoofyApp());
}

class SpoofyApp extends StatelessWidget {
  const SpoofyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SpoofyTheme.mainTheme(),
      title: 'Spoofy',
      home: SpoofyHomePage(title: 'Spoofy'),
    );
  }
}
