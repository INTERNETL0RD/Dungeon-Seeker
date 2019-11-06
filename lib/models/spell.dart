class Spell {
  final String name;
  final String desc;
  final String higherLevel;
  final String page;
  final String range;
  final List<String> components;
  final String material;
  final String ritual;
  final String duration;
  final String concentration;
  final String catingTime;
  final int level;
  final Map<String, String> school;
  final List<Map<String, String>> classes;
  final List<Map<String, String>> subclasses;

  Spell(
      {this.name,
      this.desc,
      this.higherLevel,
      this.page,
      this.range,
      this.components,
      this.material,
      this.ritual,
      this.duration,
      this.concentration,
      this.catingTime,
      this.level,
      this.school,
      this.classes,
      this.subclasses});
}
