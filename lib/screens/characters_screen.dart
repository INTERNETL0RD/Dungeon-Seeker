import 'package:flutter/material.dart';

import '../widgets/characters_item.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Container(
          height: mediaQuery.size.height * 0.10,
          color: Colors.deepOrange,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: 25,),
        CharacterItem()
      ],
    );
  }
}
