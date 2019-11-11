import 'package:flutter/material.dart';

import '../widgets/stats_creation_container.dart';
import '../widgets/core_inputs.dart';

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
  int creationPhase = 0;
  int strVal = 10;
  int dexVal = 10;
  int conVal = 10;
  int intVal = 10;
  int wisVal = 10;
  int chaVal = 10;

  void setBkd(newValue) => setState(() => backgroundValue = newValue);
  void setClass(newValue) => setState(() => classValue = newValue);
  void setRace(newValue) => setState(() => raceValue = newValue);
  void setLevel(newValue) => setState(() => levelValue = newValue);
  void setStr(int addedNum) => setState(() => strVal += addedNum);
  void setDex(int addedNum) => setState(() => dexVal += addedNum);
  void setCon(int addedNum) => setState(() => conVal += addedNum);
  void setInt(int addedNum) => setState(() => intVal += addedNum);
  void setWis(int addedNum) => setState(() => wisVal += addedNum);
  void setCha(int addedNum) => setState(() => chaVal += addedNum);
  void advancePhase() => setState(() => creationPhase++);
  @override
  Widget build(BuildContext context) {
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
            children: <Widget>[
              CoreInputs(
                raceValue: raceValue,
                classValue: classValue,
                backgroundValue: backgroundValue,
                levelValue: levelValue,
                isEnabled: creationPhase == 0,
                setBkd: setBkd,
                setClass: setClass,
                setRace: setRace,
                setLevel: setLevel,
                advancePhase: advancePhase,
              ),
              if (creationPhase >= 1)
                StatsCreationContainer(
                  strVal: strVal,
                  dexVal: dexVal,
                  conVal: conVal,
                  intVal: intVal,
                  wisVal: wisVal,
                  chaVal: chaVal,
                  setCha: setCha,
                  setCon: setCon,
                  setDex: setDex,
                  setInt: setInt,
                  setStr: setStr,
                  setWis: setWis,
                  isEnabled: creationPhase ==1,
                  advancePhase: advancePhase,
                )
            ],
          ),
        ),
      ),
    );
  }
}
