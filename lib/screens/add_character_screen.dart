import 'package:flutter/material.dart';

class AddCharacterScreen extends StatefulWidget {
  static const routeName = "/add-character";

  @override
  _AddCharacterScreenState createState() => _AddCharacterScreenState();
}

class _AddCharacterScreenState extends State<AddCharacterScreen> {
  String raceValue;
  String classValue;
  String backgroundValue;
  String levelValue;

  Widget _buildDropDown(List<String> iterable, fieldName, Function f, value) {
    return DropdownButton<String>(
      onChanged: f,
      underline: Container(
        height: 2,
        color: Theme.of(context).accentColor,
      ),
      isExpanded: true,
      value: value,
      hint: Text("Choose a $fieldName"),
      icon: Icon(
        Icons.arrow_drop_down,
        color: Theme.of(context).accentColor,
      ),
      items: iterable.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,
              style: TextStyle(color: Theme.of(context).textTheme.body2.color)),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    const races = [
      "Dwarf",
      "Elf",
      "Halfling",
      "Human",
      "Dragonborn",
      "Gnome",
      "Half-Elf",
      "Half-Orc",
      "Tiefling"
    ];
    const classes = [
      "Barbarian",
      "Bard",
      "Cleric",
      "Druid",
      "Fighter",
      "Monk",
      "Paladin",
      "Ranger",
      "Rogue",
      "Sorcerer",
      "Warlock",
      "Wizard"
    ];
    const backgrounds = [
      "Acolyte",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "New Character",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                style: TextStyle(color: Theme.of(context).textTheme.body2.color),
                decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                        color: Theme.of(context).textTheme.body2.color),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).accentColor, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).accentColor, width: 2))),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                   child: _buildDropDown(races, "race",
                        (newValue) => setState(() => raceValue = newValue), raceValue),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: _buildDropDown(classes, "class",
                        (newValue) => setState(() => classValue = newValue), classValue),
                        
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                   child: _buildDropDown(backgrounds, "background",
                        (newValue) => setState(() => backgroundValue = newValue), backgroundValue),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: _buildDropDown(List.generate(20, (i) => "${i+1}"), "starting level",
                        (newValue) => setState(() => levelValue = newValue), levelValue),
                        
                  ),
                ],
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
