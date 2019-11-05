import 'package:flutter/material.dart';

import './characters_screen.dart';
import './rules_screen.dart';
import '../widgets/characters_overview.dart';
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  var _currentIndex = 0;
  final _pages = [CharactersScreen(), RulesScreen()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Dungeon Seeker",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).textTheme.title.color,
              )),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            labelColor: Theme.of(context).textTheme.title.color,
            isScrollable: false,
            tabs: <Widget>[
              Tab(
                text: "Player",
              ),
              Tab(
                text: "DM",
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CharactersOverview()
            ],
          ),
        ),
      ),
    );
  }
}
