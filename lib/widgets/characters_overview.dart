import 'package:flutter/material.dart';

 class CharactersOverview extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
         Text("Characters:", style: Theme.of(context).textTheme.title),
       ],
     );
   }
 }