class Race {
  final String name;
  final int speed;
  final List<int> abilityBonuses;
  final String alignment;
  final String age;
  final String size;
  final String sizeDescription;
  final List<Map<String, String>> startingProficiences;
  final Map<String, Object> startingProficiencyOptions;
  final List<Map<String, String>> languages;
  final String languageDesc;
  final List<Map<String, String>> traits;
  final List<Map<String, String>> subraces;
  final String url;

  Race({this.name, this.speed, this.abilityBonuses, this.alignment, this.age, this.size, this.sizeDescription, this.startingProficiences, this.startingProficiencyOptions,
  this.languages, this.languageDesc, this.traits, this.subraces, this.url});

}