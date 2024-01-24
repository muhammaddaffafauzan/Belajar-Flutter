import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 150,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 209, 60, 60),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _IsiRowItem("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s", "Persib x Emyu"),
                _IsiRowItem("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s", "Persib x Emyu"),
                _IsiRowItem("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s", "Persib x Emyu"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _IsiRowItem(String imageUrl, String text) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        Text(text),
      ],
    );
  }
}
