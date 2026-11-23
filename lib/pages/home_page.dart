import 'package:flutter/material.dart';
import 'package:mobile_legend_hero/data/hero_data.dart';
import 'package:mobile_legend_hero/models/hero.dart';
import 'package:mobile_legend_hero/widgets/hero_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MLHero> heroes = dataHero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Legends"),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_outlined),
        actions: const [
          Icon(Icons.favorite),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: heroes.length,
        itemBuilder: (BuildContext context, int index) {
          return HeroList(hero: heroes[index]);
        },
      ),
    );
  }
}