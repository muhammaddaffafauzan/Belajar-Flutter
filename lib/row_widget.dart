import 'package:flutter/material.dart';

class BelajarRow  extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("ini isi row 1"),
        Text("ini isi row 2"),
        Text("ini isi row 3")
      ],
    );
  }
}