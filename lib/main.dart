import 'package:flutter/material.dart';
import 'package:flutter_twitter_demo/feature/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
          primaryColor: Color(0xff1DA1F2),
          fontFamily: 'RobotoMono',
          backgroundColor: Color(0xff10171e),
          scaffoldBackgroundColor : Color(0xff10171e),
          textTheme: Theme.of(context).textTheme.copyWith(
            title: Theme.of(context).textTheme.title.copyWith(color: Color(0xffFFFFFF)),
            subtitle: Theme.of(context).textTheme.subtitle.copyWith(color: Color(0xffFFFFFF)),
            body1: Theme.of(context).textTheme.body1.copyWith(color: Color(0xffFFFFFF)),
            body2: Theme.of(context).textTheme.body2.copyWith(color: Color(0xffFFFFFF)),
          ),
        iconTheme: IconThemeData(color: Color(0xff1DA1F2)),
        dividerColor: Color(0xffE1E8ED)

      ),
      home: MainScreen(),
    );
  }
}

