import 'package:flutter/material.dart';

import './players_screen.dart';
import './dm_screen.dart';

class TabsScreen extends StatelessWidget {
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
        body: TabBarView(
          children: <Widget>[PlayersScreen(), DmScreen()],
        ),
      ),
    );
  }
}
