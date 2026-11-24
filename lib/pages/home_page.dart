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
  final Set<MLHero> favorites = {};
  final TextEditingController searchController = TextEditingController();

  bool showFavoritesOnly = false;
  String query = '';
  String selectedRole = 'Semua';

  late final List<String> roles = [
    'Semua',
    ...heroes.map((h) => h.role).toSet(),
  ];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void toggleFavorite(MLHero hero) {
    setState(() {
      if (!favorites.remove(hero)) {
        favorites.add(hero);
      }
    });
  }

  List<MLHero> get displayed {
    final q = query.trim().toLowerCase();
    return heroes.where((h) {
      final matchFavorite = !showFavoritesOnly || favorites.contains(h);
      final matchRole = selectedRole == 'Semua' || h.role == selectedRole;
      final matchQuery = q.isEmpty ||
          h.name.toLowerCase().contains(q) ||
          h.alias.toLowerCase().contains(q);
      return matchFavorite && matchRole && matchQuery;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final result = displayed;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mobile Legends",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip:
            showFavoritesOnly ? "Tampilkan semua" : "Tampilkan favorit",
            onPressed: () {
              setState(() => showFavoritesOnly = !showFavoritesOnly);
            },
            icon: Badge(
              isLabelVisible: favorites.isNotEmpty,
              label: Text('${favorites.length}'),
              child: Icon(
                showFavoritesOnly ? Icons.favorite : Icons.favorite_border,
                color: showFavoritesOnly ? Colors.red : null,
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: TextField(
              controller: searchController,
              onChanged: (value) => setState(() => query = value),
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: "Cari hero...",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: query.isEmpty
                    ? null
                    : IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    searchController.clear();
                    setState(() => query = '');
                  },
                ),
                filled: true,
                fillColor: colorScheme.surfaceContainerHighest,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(999),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // Filter role
          SizedBox(
            height: 48,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              itemCount: roles.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final role = roles[index];
                return ChoiceChip(
                  label: Text(role),
                  selected: selectedRole == role,
                  showCheckmark: false,
                  shape: const StadiumBorder(),
                  onSelected: (_) => setState(() => selectedRole = role),
                );
              },
            ),
          ),

          // Info jumlah hasil
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
            child: Row(
              children: [
                Text(
                  showFavoritesOnly
                      ? "${result.length} hero favorit"
                      : "${result.length} hero",
                  style: TextStyle(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          // Daftar hero
          Expanded(
            child: result.isEmpty
                ? _EmptyState(
              icon: showFavoritesOnly
                  ? Icons.favorite_border
                  : Icons.search_off,
              message: showFavoritesOnly && favorites.isEmpty
                  ? "Belum ada hero favorit"
                  : "Hero tidak ditemukan",
            )
                : ListView.separated(
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: result.length,
              separatorBuilder: (_, __) =>
              const Divider(height: 1, indent: 88, endIndent: 16),
              itemBuilder: (BuildContext context, int index) {
                final hero = result[index];
                return HeroList(
                  hero: hero,
                  isFavorite: favorites.contains(hero),
                  onFavoriteTap: () => toggleFavorite(hero),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String message;

  const _EmptyState({required this.icon, required this.message});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onSurfaceVariant;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 64, color: color),
          const SizedBox(height: 12),
          Text(message, style: TextStyle(fontSize: 16, color: color)),
        ],
      ),
    );
  }
}