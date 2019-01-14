import 'package:flutter/material.dart';

class DrawerHeaderWidget extends StatefulWidget {
  @override
  _DrawerHeaderWidgetState createState() => _DrawerHeaderWidgetState();
}

class _DrawerHeaderWidgetState extends State<DrawerHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        border: Border(
          bottom: Divider.createBorderSide(context),
        ),
      ),
      padding: EdgeInsets.fromLTRB(16.0, statusBarHeight + 16.0, 16.0, 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
                "https://pbs.twimg.com/profile_images/968110489770246144/NT_I6ehi_400x400.jpg"),
          ),
         new Container(
           child:  new Row(
             children: <Widget>[
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text(
                       "Dang Ngoc Duc",
                       style: Theme.of(context).textTheme.title,
                     ),
                     Text(
                       "@ducdangngoc",
                       style: Theme.of(context).textTheme.subtitle,
                     )
                   ],
                 ),
               ),
               Icon(
                 Icons.keyboard_arrow_down,
                 color: Theme.of(context).primaryColor,
               ),
             ],
           ),
         ),
          new Container(
            padding: EdgeInsets.only(top: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text("50", style: Theme.of(context).textTheme.subtitle,),
                ),
                Container(
                  child: Text("Following", style: Theme.of(context).textTheme.body2,),
                  padding: EdgeInsets.only(left: 8.0),

                ),
                Container(
                  child: Text("1", style: Theme.of(context).textTheme.subtitle,),
                  padding: EdgeInsets.only(left: 16.0),
                ),
                Container(
                  child: Text("Follower", style: Theme.of(context).textTheme.body2,),
                  padding: EdgeInsets.only(left: 8.0),
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
