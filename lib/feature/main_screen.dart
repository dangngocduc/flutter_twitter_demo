import 'package:flutter/material.dart';
import 'package:flutter_twitter_demo/components/bottombar/bottom_bar_widget.dart';
import 'package:flutter_twitter_demo/components/drawer_body_menu.dart';
import 'package:flutter_twitter_demo/components/drawer_header.dart';
import 'package:flutter_twitter_demo/feature/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var bottomNavigationItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
    BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("Trending")),
    BottomNavigationBarItem(
        icon: Icon(Icons.notifications), title: Text("Notify")),
    BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text("Message")),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).bottomAppBarColor,
        leading: Padding(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
          child: CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/968110489770246144/NT_I6ehi_400x400.jpg"),
          ),
        ),
        titleSpacing: 0.0,
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.circular(48),
              border: Border.all(
                  color: Theme.of(context).dividerColor, width: 0.5)),
          height: 36,
          width: MediaQuery.of(context).size.width - 56 * 2,
          child: Padding(
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              child: Text(
                "Search Twitter",
                style: Theme.of(context)
                    .textTheme
                    .body1
                    .copyWith(color: Theme.of(context).hintColor),
              )),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: HomeScreen(),
      bottomNavigationBar: Theme(data: Theme.of(context).copyWith(
        canvasColor: Theme.of(context).bottomAppBarColor,

      ), child: BottomBarWidget()),
    );
  }
}
