import 'package:flutter/material.dart';


class BottomBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomBarWidgetState();
  }
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomAppBarColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4.0),
            spreadRadius: 2.0,
            blurRadius: 25,
          )
        ],
        border: Border(
          top: Divider.createBorderSide(context, width: 0.2, color: Theme.of(context).dividerColor)
        )
      ),
      child: Row(
        children: <Widget>[
          _BottomBarItem(icon: Icons.home,),
          _BottomBarItem(icon: Icons.search,),
          _BottomBarItem(icon: Icons.notifications,),
          _BottomBarItem(icon: Icons.mail,)
        ],
      ),
    );
  }
}



class _BottomBarItem extends StatelessWidget {
  final IconData icon;

  _BottomBarItem({Key key, this.icon}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Center(
      child: Icon(this.icon, color: Theme.of(context).primaryColor,),
    ));
  }

}