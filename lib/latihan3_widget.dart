import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 400,
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLWGdgDWHN8JUONrPh1TqH5PqAhktQKMi0xA&usqp=CAU"),
                ),
              ),
            ),
            Container(
              width: 400,
              height: 150,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 250, // Adjust the width as needed
                        child: Text(
                          "PERSIB adalah klub sepak bola Indonesia yang berbasis di Kota Bandung.",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text("Gallery"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _IsiRowItem("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s"),
                _IsiRowItem("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s"),
                _IsiRowItem("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

Widget _IsiRowItem(String imageUrl) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
      ],
    );
  }