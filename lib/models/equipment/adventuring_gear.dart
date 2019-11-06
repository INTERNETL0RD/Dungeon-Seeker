import './equipment.dart';

class AdventuringGear extends Equipment {
  final String desc;
  final List<Map<String, Object>> content;

  AdventuringGear(
      {this.desc, this.content, weight, name, cost, category, subcategory})
      : super(
            name: name,
            category: category,
            subcategory: subcategory,
            weight: weight,
            cost: cost);
}
