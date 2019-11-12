import './race.dart';
import './character_class.dart';
import './background.dart';
import './spell.dart';
import './equipment/equipment.dart';

class PlayableCharacter {
  final String name;
  final Race race;
  final CharacterClass characterClass;
  final Map<String, int> stats;
  final Background background;
  final List<Spell> spells;
  final List<Equipment> equipment;
  final int currentHitPoints;
  final int totalHitPoints;
  final Map<String,Map<String, dynamic>> skills;

  PlayableCharacter(
      {this.name,
      this.race,
      this.characterClass,
      this.stats,
      this.background,
      this.spells,
      this.equipment,
      this.currentHitPoints,
      this.totalHitPoints,
      this.skills});
}
