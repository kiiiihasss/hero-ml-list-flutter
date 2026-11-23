import 'package:flutter/material.dart';
import 'package:mobile_legend_hero/models/hero.dart';
import 'package:mobile_legend_hero/pages/detail_page.dart';
import 'package:mobile_legend_hero/widgets/role_chip.dart';

class HeroList extends StatelessWidget {
  final MLHero hero;

  const HeroList({
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

    return ListTile(
      onTap: () => detailPage(hero),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(999),
        child: Hero(
          tag: "hero-image-${hero.name}",
          child: Image.asset(
            hero.image,
            width: 56,
            height: 56,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        hero.name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: RoleChip(
        role: hero.role,
      ),
      trailing: const Icon(
        Icons.favorite_border_outlined,
        size: 24,
      ),
    );
  }
}