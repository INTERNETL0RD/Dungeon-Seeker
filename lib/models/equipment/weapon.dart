import './equipment.dart';

class Weapon extends Equipment {
  final String weaponRange;
  final Map<String, int> damage;
  final Map<String, int> range;
  final List<Map<String, Map>> properties;

  Weapon(
      {this.weaponRange,
      this.damage,
      this.range,
      this.properties,
      weight, name,
      cost,
      category,
      subcategory})
      : super(
            name: name,
            category: category,
            subcategory: subcategory,
            weight: weight,
            cost: cost);
}
