import 'package:flutter/material.dart';

class BelajarListBuilder extends StatelessWidget {
  BelajarListBuilder({super.key});

  final List<Color> colorList = [Colors.red, Colors.blue, Colors.green];
  final List<String> textList = ["pdi", "demokrat", "pkb"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 800,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: 200,
              color: colorList[index],
              child: Text(textList[index]),
            );
          }),
    );
  }
}
