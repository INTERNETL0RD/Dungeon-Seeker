import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: mediaQuery.size.width,
          height: mediaQuery.size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://media.dnd.wizards.com/MadMage_Expansion_iPhone_Wallpaper_Template.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: mediaQuery.size.height * 0.2,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white54, Colors.deepOrange])),
                child: Text(
                  "Dungeon Seeker",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: mediaQuery.size.height * 0.1,
              ),
              Container(
                width: mediaQuery.size.width * 0.8,
                height: mediaQuery.size.height * 0.26,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(15),
                child: new AuthForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  String _email;
  String _password;
  final GlobalKey<FormState> _formKey = GlobalKey();
  void _submitData() {
    _formKey.currentState.save();
    Provider.of<Auth>(context).signIn("test@test.com", "123456");
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            onSaved: (value) => _email = value,
            decoration: InputDecoration(
                labelText: "Email",
                labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2))),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            onSaved: (value) => _password = value,
            decoration: InputDecoration(
                labelText: "Password",
                labelStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54, width: 2))),
          ),
          SizedBox(
            height: 15,
          ),
          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
            child: Text(
              "Log in",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onPressed: _submitData,
            color: Colors.deepOrange,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
