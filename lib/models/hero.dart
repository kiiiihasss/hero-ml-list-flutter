class MLHero {
  final String name;
  final String alias;
  final String image;
  final String role;
  final String specialty;
  final String lane;
  final String difficulty;
  final String quote;
  final String story;
  final List<SkillDetail> skills;

  MLHero({
    required this.name,
    required this.alias,
    required this.image,
    required this.role,
    required this.specialty,
    required this.lane,
    required this.difficulty,
    required this.quote,
    required this.story,
    required this.skills,
  });
}

class SkillDetail {
  final String name;
  final String type; // Passive, Skill 1, Skill 2, Ultimate
  final String description;

  SkillDetail({
    required this.name,
    required this.type,
    required this.description,
  });
}