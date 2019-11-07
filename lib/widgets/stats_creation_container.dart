import 'package:flutter/material.dart';

class StatsCreationContainer extends StatelessWidget {

  Widget _buildStatCalculator(String stat){
   return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.remove,
                        size: 15,
                      ),
                      onPressed: () {},
                    ),
                   Container(
                     height: 34,
                     padding: EdgeInsets.all(5),
                     child: FittedBox(child: Text("10")),
                     decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 1)),
                   ),
                    IconButton(
                      icon: Icon(Icons.add, size: 15),
                      onPressed: () {},
                    ),
                  ],
                ),
                Text(stat)
              ],
            );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Row(
          children: <Widget>[
            _buildStatCalculator("STR"),
            _buildStatCalculator("DEX"),
            _buildStatCalculator("CON")
          ],
        ));
  }
}
