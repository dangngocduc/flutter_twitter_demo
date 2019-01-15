import 'package:flutter/material.dart';

class AppBarMainWidget extends StatefulWidget {
  @override
  _AppBarMainWidgetState createState() => _AppBarMainWidgetState();
}

class _AppBarMainWidgetState extends State<AppBarMainWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 4, left: 16.0, right: 16.0, bottom: 4),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/968110489770246144/NT_I6ehi_400x400.jpg"),
          ),

        ],
      ),
    );
  }
}
