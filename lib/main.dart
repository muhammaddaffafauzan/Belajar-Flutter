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
          title: Text("PERSIB",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: LatihanListBuilder()
      ),
    );
  }
  
}