import 'package:flutter/material.dart';
import './Drawer.dart';
class SettingScreen extends StatelessWidget {
  static String routeName = "/settings";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting page"),
      ),
      drawer: MainDrawerScreen(),
      body: Column(
        children:<Widget>[
        Text("Setting page"),
        RaisedButton(onPressed:(){
        Navigator.of(context).pop("back bdata");
        }, child: Text("pop click"),)
        ],
      ),
    );
  }
}
