import 'package:flutter/material.dart';

class DrawerMenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            __DrawerMenuItem(assetName : Icons.account_circle, title: "Profile",),
            __DrawerMenuItem(assetName: Icons.book, title: "List",),
            __DrawerMenuItem(assetName: Icons.bookmark_border, title: "Bookmark",),
            __DrawerMenuItem(assetName: Icons.flash_on, title: "Story",),
            Divider(),
            Container(
              padding: EdgeInsets.fromLTRB(28.0,  12.0, 16.0, 12.0),
              child: Text("Setting and Privicy", style: Theme.of(context).textTheme.subtitle),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(28.0, 12.0, 16.0, 12.0),
              child: Text("Center Helping", style: Theme.of(context).textTheme.subtitle),
            )

          ],
        ),
      ),
    );
  }
}

class __DrawerMenuItem extends StatelessWidget {
  __DrawerMenuItem({Key key, this.assetName, this.title});
  final IconData assetName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            padding: EdgeInsets.all(12.0),
            child: Icon(this.assetName),
          ),
          Text(title, style: Theme.of(context).textTheme.subtitle,)
        ],
      ),
    );
  }
}

