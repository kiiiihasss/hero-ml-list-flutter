import 'package:flutter/material.dart';
import 'package:mobile_legend_hero/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Legends',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home-page': (context) => const HomePage(),
      },
    );
  }
}