import 'package:flutter/material.dart';
import './Drawer.dart';
import './SettingScreen.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/":(ctx) => HomeScreen(),
         SettingScreen.routeName:(ctx) => SettingScreen(),
      },
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      body: Center(child: Text("Drawer"),),
     drawer: MainDrawerScreen(),
    );
  }
}