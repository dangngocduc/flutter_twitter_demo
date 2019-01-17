import 'package:flutter/material.dart';

class TwitterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TwitterWidgetState();
  }
}

class _TwitterWidgetState extends State<TwitterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),
          _TwitterBodyWidget(),

        ],
      ),
    );
  }
}

class _TwitterBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: Divider.createBorderSide(context).copyWith(width: 0.25, color: Theme.of(context).primaryColor)
        )
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(left: 8.0, right: 16.0, top: 16.0),
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/968110489770246144/NT_I6ehi_400x400.jpg"),
            ),
          ),
          Expanded(
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      Text(
                        "Dang Ngoc Duc",
                        style: Theme.of(context).textTheme.body2,
                      ),
                      Expanded(
                        child: Text(
                          " @dangngocduc\u00b713h ",
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Theme.of(context).hintColor),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.keyboard_arrow_down),
                        onPressed: () {},
                        padding: EdgeInsets.all(8),
                      )
                    ],
                  ),
                  new Text(
                    "Built Value Tutorial for Dart & Flutter http://bit.ly/2Dfbfj2  https://www.youtube.com/watch?v=Jji05a2GV_s … @flutterio #flutterio",
                    style: Theme.of(context).textTheme.body2,
                  ),
                  new Padding(
                    padding: EdgeInsets.only(right: 16.0, top: 8.0),
                    child: AspectRatio(
                      aspectRatio: 361.0 / 192,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(
                              width: 0.5, color: Theme.of(context).dividerColor),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://pbs.twimg.com/media/DxEkFLiXcAEg5UW.jpg")),
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                    padding:
                    EdgeInsets.only(left: 0, right: 8, top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        _TwitterActionWidget(
                          iconData: Icons.comment,
                          content: "13",
                        ),
                        _TwitterActionWidget(
                          iconData: Icons.repeat,
                          content: "34",
                        ),
                        _TwitterActionWidget(
                          iconData: Icons.favorite_border,
                          content: "191",
                        ),
                        _TwitterActionWidget(
                          iconData: Icons.share,
                          content: "191",
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class _TwitterActionWidget extends StatelessWidget {
  IconData iconData;
  String content;

  _TwitterActionWidget({Key key, this.content, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(minWidth: 60),
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 4.0, bottom: 8.0, top: 8.0),
            child: Icon(this.iconData,
                size: 16, color: Theme.of(context).dividerColor),
          ),
          Text(
            this.content,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Theme.of(context).dividerColor),
          )
        ]));
  }
}
