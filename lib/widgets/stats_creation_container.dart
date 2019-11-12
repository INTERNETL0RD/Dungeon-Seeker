import 'package:flutter/material.dart';

class StatsCreationContainer extends StatelessWidget {
  final int strVal;
  final int dexVal;
  final int conVal;
  final int intVal;
  final int wisVal;
  final int chaVal;
  final Function setStr;
  final Function setDex;
  final Function setCon;
  final Function setInt;
  final Function setWis;
  final Function setCha;
  final Function advancePhase;
  final bool isEnabled;

  StatsCreationContainer(
      {this.strVal,
      this.chaVal,
      this.conVal,
      this.dexVal,
      this.intVal,
      this.wisVal,
      this.setCha,
      this.setCon,
      this.setDex,
      this.setInt,
      this.setStr,
      this.setWis,
      this.advancePhase,
      this.isEnabled});

  Widget _buildStatCalculator(
      int value, String stat, BuildContext context, Function f) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: CircleBorder(),
                child: Icon(Icons.remove, size: 15, color: Color(0xFFE6E9ED)),
                onPressed: isEnabled ? () => f(-1) : null,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(10),
                child: FittedBox(
                    fit: BoxFit.fitHeight,
                    child: Text(
                      value.toString(),
                      style: TextStyle(color: Color(0xFFE6E9ED), fontSize: 30),
                    )),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1,
                    )),
              ),
            ),
            Expanded(
              child: RaisedButton(
                
                color: Theme.of(context).primaryColor,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: CircleBorder(),
                child: Icon(Icons.add, size: 15, color: Color(0xFFE6E9ED)),
                onPressed: isEnabled ? () => f(1) : null, 
              ),
            ),
          ],
        ),
        Text(stat, style: TextStyle(color: Theme.of(context).accentColor))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(isEnabled ?
                  "Select the initial ability scores" : "Initial ability scores",
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).textTheme.body2.color),
                ),
                IconButton(
                  icon: Icon(
                    Icons.info_outline,
                    color: Colors.yellow,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (
                        BuildContext ctx,
                      ) {
                        return Dialog(
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: Text(
                                "Your race ability scores bonuses will be added later automatically. If you chose a level greater than 1 and you can level up a specific abilty score, do it now."),
                          ),
                        );
                      },
                      barrierDismissible: true,
                    );
                  },
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      _buildStatCalculator(strVal, "STR", context, setStr),
                      _buildStatCalculator(dexVal, "DEX", context, setDex),
                      _buildStatCalculator(conVal, "CON", context, setCon)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      _buildStatCalculator(intVal, "INT", context, setInt),
                      _buildStatCalculator(wisVal, "WIS", context, setWis),
                      _buildStatCalculator(chaVal, "CHA", context, setCha)
                    ],
                  ),
                )
              ],
            ),
            Container(
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
        ));
  }
}
