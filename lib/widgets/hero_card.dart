import 'package:flutter/material.dart';
import 'package:mobile_legend_hero/models/hero.dart';
import 'package:mobile_legend_hero/pages/detail_page.dart';

class HeroCard extends StatelessWidget {
  final MLHero hero;

  const HeroCard({
    super.key,
    required this.hero,
  });

  @override
  Widget build(BuildContext context) {
    void detailPage(MLHero hero) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailPage(hero: hero),
        ),
      );
    }

    return InkWell(
      onTap: () {
        detailPage(hero);
      },
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        clipBehavior: Clip.antiAlias,
        child: Hero(
          tag: hero.name,
          child: Image.asset(
            hero.image,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}