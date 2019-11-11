import 'package:flutter/material.dart';

class CoreInputs extends StatelessWidget {
  final bool isEnabled;
  final String classValue;
  final String raceValue;
  final String backgroundValue;
  final String levelValue;
  final Function setClass;
  final Function setBkd;
  final Function setRace;
  final Function setLevel;
  final Function advancePhase;

  CoreInputs(
      {this.classValue,
      this.raceValue,
      this.backgroundValue,
      this.levelValue,
      this.isEnabled,
      this.setBkd,
      this.setClass,
      this.setLevel,
      this.setRace,
      this.advancePhase});

  @override
  Widget build(BuildContext context) {
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
        disabledHint: Text(value != null ? value : "",
            style: TextStyle(color: Theme.of(context).textTheme.body2.color)),
        icon: Icon(
          Icons.arrow_drop_down,
          color: Theme.of(context).accentColor,
        ),
        items: isEnabled
            ? iterable.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.body2.color)),
                );
              }).toList()
            : null,
      );
    }

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          enabled: isEnabled,
          style: TextStyle(color: Theme.of(context).textTheme.body2.color),
          decoration: InputDecoration(
              labelText: "Name",
              labelStyle:
                  TextStyle(color: Theme.of(context).textTheme.body2.color),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).accentColor, width: 2)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).accentColor, width: 2)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Theme.of(context).accentColor, width: 2))),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: _buildDropDown(races, "race", setRace, raceValue),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: _buildDropDown(classes, "class", setClass, classValue),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: _buildDropDown(
                  backgrounds, "background", setBkd, backgroundValue),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: _buildDropDown(List.generate(20, (i) => "${i + 1}"),
                  "starting level", setLevel, levelValue),
            ),
          ],
        ),
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: isEnabled
                ? FlatButton(
                    child: Text(
                      "Next Step",
                      style: TextStyle(
                          color: Theme.of(context).textTheme.body2.color),
                    ),
                    onPressed: advancePhase,
                    color: Theme.of(context).accentColor,
                  )
                : null),
      ],
    );
  }
}
