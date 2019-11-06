import 'package:flutter/material.dart';

import '../widgets/characters_overview.dart';

class PlayersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[CharactersOverview()],
          ),
        );
  }
}