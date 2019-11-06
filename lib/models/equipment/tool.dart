import './equipment.dart';

class Tool extends Equipment {
  final String desc;

  Tool({this.desc,weight, name,
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
