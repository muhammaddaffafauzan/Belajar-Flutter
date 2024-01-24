import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("text"),
                FlutterLogo(
                  size: 64,
                )
              ],
            ),
             Column(
              children: [
                Text("text"),
                FlutterLogo(
                  size: 64,
                )
              ],
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            )
          ],
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("text"),
                FlutterLogo(
                  size: 64,
                )
              ],
            ),
             Column(
              children: [
                Text("text"),
                FlutterLogo(
                  size: 64,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
