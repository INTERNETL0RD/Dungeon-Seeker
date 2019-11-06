import './equipment.dart';

class Armor extends Equipment {
  final String armorCategory;
  final Map<String, Object> armorClass;
  final int strMin;
  final bool stealthDisadvantage;

  Armor(
      {this.armorCategory,
      this.armorClass,
      this.strMin,
      this.stealthDisadvantage,
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
