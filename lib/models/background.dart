import './proficiency.dart';
import './feature.dart';

class Background {
  final String name;
  final List<Proficiency> proficiencies;
  final List<String> languages;
  final Feature feature;
  final String personalityTrait;
  final String ideal;
  final String bond;
  final String flaw;

  Background({this.name, this.proficiencies, this.languages, this.feature, this.personalityTrait, this.ideal, this.bond, this.flaw});
}