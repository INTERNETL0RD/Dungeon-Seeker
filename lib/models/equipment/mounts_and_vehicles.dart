import './equipment.dart';

class MountsAndVehicles extends Equipment {
  final int speed;
  final String capacity;

  MountsAndVehicles({this.speed, this.capacity, weight, name,
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