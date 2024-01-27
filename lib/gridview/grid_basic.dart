import 'package:flutter/material.dart';

class BelajarGridBasic extends StatelessWidget {
  BelajarGridBasic({super.key});


  @override
  Widget build(BuildContext context) {
var mediaQueryData = MediaQuery.of(context);
final double widthScreen = mediaQueryData.size.width;
final double appBarHeight = kToolbarHeight;
final double paddingBottom = mediaQueryData.padding.bottom;
final double heightScreen = mediaQueryData.size.height - paddingBottom - appBarHeight;
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: widthScreen/heightScreen,
      children: [
        Container(
          color: Colors.yellowAccent,
          child: Center(
            child: Text(
              "1",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              "2",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.brown,
          child: Center(
            child: Text(
              "3",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
        Container(
          color: Colors.orange,
          child: Center(
            child: Text(
              "4",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
        ),
      ],
    );
  }
}
