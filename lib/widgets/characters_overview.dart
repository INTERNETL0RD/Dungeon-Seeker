import 'package:flutter/material.dart';

class CharactersOverview extends StatelessWidget {
  final playerCharacters = [1,2];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Characters", style: Theme.of(context).textTheme.title),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              children: playerCharacters.length <= 0
                  ? [Center(child: Text("You have no characters!"))]
                  : playerCharacters.map((character) {
                      return Card(
                        child: Text("Character!"),
                      );
                    }).toList()),
        )
      ],
    );
  }
}
