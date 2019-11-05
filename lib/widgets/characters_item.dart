import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
          child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(6),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc7NJ0AbIkhslD0LFfbeQZAZ53DIKXzkVDCEOJdXp6IJ_KBG8a&s",), radius: 40,),
              SizedBox(width: 25,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text("Sylas!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("Elf Barbarian", style: TextStyle(fontSize: 15, color: Colors.grey),),

              ],)
            ],
          ),
        ),
      ),
    );
  }
}
