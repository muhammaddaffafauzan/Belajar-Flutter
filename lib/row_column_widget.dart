import 'package:flutter/material.dart';

class BelajarRowNColumn  extends StatelessWidget {
  const BelajarRowNColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("ini isi row 1"),
        Text("ini isi row 2"),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("ini adalah column 1"),
            Text("ini adalah column 2"),
            Text("ini adalah column 3"),
          ],
        )
      ],
    );
  }
}