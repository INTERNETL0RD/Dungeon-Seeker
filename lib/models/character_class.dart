class CharacterClass {
  final String name;
  final int hitDie;
  final List<Map<String, Object>> proficiencyChoices;
  final List<Map<String, String>> proficiencies;
  final List<Map<String, String>> savingThrows;
  final Map<String, String> startingEquipment;
  final Map<String, String> classLevels;
  final Map<String, String> subclasses;

  CharacterClass(
      {this.name,
      this.hitDie,
      this.proficiencyChoices,
      this.proficiencies,
      this.savingThrows,
      this.startingEquipment,
      this.classLevels,
      this.subclasses});
}
