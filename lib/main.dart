import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


import './screens/tabs_screen.dart';
import './screens/auth_screen.dart';
import './screens/add_character_screen.dart';
import './providers/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        )
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'Dungeon Seeker',
          theme: ThemeData(
            canvasColor: Color(0xFF2c2e3e),
            scaffoldBackgroundColor: Color(0xFF34374c),
            textTheme: TextTheme(title: TextStyle(color: Color(0xFFd4455a), fontSize: 22, fontWeight: FontWeight.bold),
            body2: TextStyle(color: Color(0xFFE6E9ED))),
            primaryColor: Color(0xFF2c2e3e),
            accentColor: Color(0xFFd4455a)
          ),
          home: auth.isAuth ? TabsScreen() : AuthScreen(),
          routes: {
            AddCharacterScreen.routeName : (ctx) => AddCharacterScreen(),
          },
        ),
      ),
    );
  }
}
