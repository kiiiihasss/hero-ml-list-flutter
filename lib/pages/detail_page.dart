import 'package:flutter/material.dart';
import 'package:mobile_legend_hero/models/hero.dart';

class DetailPage extends StatelessWidget {
  final MLHero hero;

  const DetailPage({
    super.key,
    required this.hero,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Header gambar
          SliverAppBar(
            pinned: true,
            expandedHeight: 320,
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                hero.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black54)],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag: "hero-image-${hero.name}",
                    child: Image.asset(
                      hero.image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: colorScheme.surfaceContainerHighest,
                          child: Icon(
                            Icons.person,
                            size: 96,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        );
                      },
                    ),
                  ),
                  // Gradient agar judul terbaca
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black87,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Konten
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Alias
                  Center(
                    child: Text(
                      '"${hero.alias}"',
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Info utama
                  Row(
                    children: [
                      Expanded(
                        child: _InfoTile(
                          icon: Icons.shield_outlined,
                          label: 'Role',
                          value: hero.role,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _InfoTile(
                          icon: Icons.alt_route,
                          label: 'Lane',
                          value: hero.lane,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _InfoTile(
                          icon: Icons.speed,
                          label: 'Kesulitan',
                          value: hero.difficulty,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Specialty
                  Row(
                    children: [
                      Icon(Icons.bolt, size: 20, color: Colors.orange.shade700),
                      const SizedBox(width: 6),
                      Text(
                        'Specialty:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          hero.specialty,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // Quote
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.format_quote,
                          size: 32,
                          color: colorScheme.onPrimaryContainer,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              hero.quote,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 14,
                                height: 1.4,
                                color: colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),

                  // Kisah
                  const _SectionTitle(
                    icon: Icons.menu_book_outlined,
                    title: 'Kisah Hero',
                  ),
                  const SizedBox(height: 10),
                  _ExpandableStory(text: hero.story),
                  const SizedBox(height: 28),

                  // Skill
                  const _SectionTitle(
                    icon: Icons.auto_awesome,
                    title: 'Kemampuan / Skill',
                  ),
                  const SizedBox(height: 12),
                  ...hero.skills.map(
                        (skill) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: _SkillCard(skill: skill),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SectionTitle({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final MaterialColor color;

  const _InfoTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: isDark ? color.shade900.withOpacity(0.35) : color.shade50,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isDark ? color.shade700 : color.shade200,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, color: isDark ? color.shade200 : color.shade700),
          const SizedBox(height: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _ExpandableStory extends StatefulWidget {
  final String text;

  const _ExpandableStory({required this.text});

  @override
  State<_ExpandableStory> createState() => _ExpandableStoryState();
}

class _ExpandableStoryState extends State<_ExpandableStory> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          alignment: Alignment.topCenter,
          child: Text(
            widget.text,
            maxLines: expanded ? null : 5,
            overflow: expanded ? TextOverflow.visible : TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, height: 1.6),
          ),
        ),
        const SizedBox(height: 4),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 32),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () => setState(() => expanded = !expanded),
          child: Text(expanded ? 'Tutup' : 'Baca selengkapnya'),
        ),
      ],
    );
  }
}

class _SkillCard extends StatelessWidget {
  final SkillDetail skill;

  const _SkillCard({required this.skill});

  ({IconData icon, MaterialColor color}) _style() {
    final type = skill.type.toLowerCase();
    if (type.contains('passive')) {
      return (icon: Icons.autorenew, color: Colors.teal);
    }
    if (type.contains('ultimate')) {
      return (icon: Icons.local_fire_department, color: Colors.red);
    }
    if (type.contains('2')) {
      return (icon: Icons.flash_on, color: Colors.orange);
    }
    return (icon: Icons.gps_fixed, color: Colors.blue);
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final style = _style();

    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 22,
              backgroundColor:
              isDark ? style.color.shade900 : style.color.shade100,
              child: Icon(
                style.icon,
                color: isDark ? style.color.shade200 : style.color.shade700,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    skill.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color:
                      isDark ? style.color.shade900 : style.color.shade50,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      skill.type,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color:
                        isDark ? style.color.shade200 : style.color.shade800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    skill.description,
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.45,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}