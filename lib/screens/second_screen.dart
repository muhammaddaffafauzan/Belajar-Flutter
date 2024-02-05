import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),backgroundColor: Colors.green,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios, color: Colors.black),
            onTap: () {
              Navigator.pop(context);
            },
          )
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ini adalah halaman kedua",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  ThirdScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Third Screen"),
          backgroundColor: Colors.green,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios, color: Colors.black),
            onTap: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ini adalah halaman Ketiga",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
