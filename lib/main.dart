import 'package:belajar/container_widget.dart';
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
      title: "belajar flutter pertama",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("Belajar Flutter",
          style: TextStyle(color: Colors.white),
          ),
        ),
        body: BelajarContainer(),
      ),
    );
  }
  
}

class textwidget extends StatelessWidget {
  const textwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hello world...\nHallo Dunia...",
        style: TextStyle(
          color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold
        ),
        )
      );
  }
}


