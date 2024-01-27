import 'package:flutter/material.dart';

class GridLatihan extends StatelessWidget {

  final List<String> alphabet = List.generate(
      26, (index) => String.fromCharCode('A'.codeUnitAt(0) + index));

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 800,
            child: GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              children: [
                ...alphabet.map((letter) => Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            letter,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),  
          GridView.count(
            crossAxisCount: 1,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 200, 
                color: Colors.red,
                child: FlutterLogo(),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 200, 
                color: Colors.red,
                child: FlutterLogo(),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 200,
                height: 200, 
                color: Colors.red,
                child: FlutterLogo(),
              ),
            ],
          ),
        ],
      );
  }
}
