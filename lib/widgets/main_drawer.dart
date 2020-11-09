import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buidListtile(
      String title, IconData icon, Function tapHandler, BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.caption,
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buidListtile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }, context),
          buidListtile('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed("/");
          }, context),
        ],
      ),
    );
  }
}
