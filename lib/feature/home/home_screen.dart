import 'package:flutter/material.dart';
import 'package:flutter_twitter_demo/components/twitter/twitter_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }

}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        TwitterWidget()
      ],
    );
  }

}