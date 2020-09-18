import 'package:flutter/material.dart';

void main() {
  runApp(Center(
    child: SizedBox(
      width: 250,
      height: 250,
      child: Stack(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.purple,
                  Colors.pink,
                  Colors.lightBlue,
                ],
              ),
            ),
            child: Image.network(
                'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
          ),
        ],
      ),
    ),
  ));
}
