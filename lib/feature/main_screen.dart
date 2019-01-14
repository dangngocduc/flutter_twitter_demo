import 'package:flutter/material.dart';
import 'package:flutter_twitter_demo/components/drawer_body_menu.dart';
import 'package:flutter_twitter_demo/components/drawer_header.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var bottomNavigationItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(("Home"))),
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(("Home"))),
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(("Home"))),
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(("Home"))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: new Column(
          children: <Widget>[
            DrawerHeaderWidget(),
            Expanded(
                child: Container(
              child: DrawerMenuWidget(),
            )),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  border: Border(top: Divider.createBorderSide(context))),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.brightness_2,
                    color: Theme.of(context).primaryColor,
                  ),
                  Spacer(),
                  Icon(
                    Icons.equalizer,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Text("Body"),
      ),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: bottomNavigationItem
        ),
    );
  }
}
