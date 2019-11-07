import 'package:flutter/material.dart';

import '../screens/add_character_screen.dart';

class CharactersOverview extends StatelessWidget {
  final playerCharacters = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Characters", style: Theme.of(context).textTheme.title),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (playerCharacters.length <= 0)
                  Center(child: Text("You have no characters!"))
                else
                  ...playerCharacters.map((character) {
                    return Card(
                      child: Text("Character!"),
                    );
                  }).toList(),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AddCharacterScreen.routeName);
                  },
                  alignment: Alignment.center,
                  color: Theme.of(context).accentColor,
                )
              ]),
        )
      ],
    );
  }
}
