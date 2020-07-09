import 'package:flutter/material.dart';
import './SettingScreen.dart';
class MainDrawerScreen extends StatelessWidget {
  Widget buildListTitle(String titile, IconData icon, Function taphandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
        color: Colors.black,
      ),
      title: Text(titile),
      onTap: taphandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.pink,
            alignment: Alignment.centerLeft,
            child: Text("Menu", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle("Food Items", Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed("/");
          }),
          SizedBox(
            height: 20,
          ),
          buildListTitle("Setting", Icons.settings, () {
             Navigator.of(context).pushNamed(SettingScreen.routeName).then((result){
               print(result);
             }
            
);
          })
        ],
      ),
    );
  }
}
