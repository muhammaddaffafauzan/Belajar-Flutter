import 'package:belajar/listview/latihan_builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Persib",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 57, 60, 223),
          leading: Container(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/api.jatimnet.com/jinet/assets/media/news/news/image_front/persib.png.780x439_q85.png"),
            ),
          ),
          title: Text(
            "PERSIB",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: LatihanListBuilder(),
      ),
    );
  }
}
