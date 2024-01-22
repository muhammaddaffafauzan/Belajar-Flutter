  import 'package:flutter/material.dart';

  class BelajarContainer extends StatelessWidget {
    const BelajarContainer({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Layerkedua()
  
      );
    }
  }

   class Layerkedua extends StatelessWidget {
    const Layerkedua({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Layerketiga()
            );
    }
  }
  
   class Layerketiga extends StatelessWidget {
    const Layerketiga({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Layerkeempat()
      );
    }
  }

     class Layerkeempat extends StatelessWidget {
    const Layerkeempat({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
         image: DecorationImage(
          image: 
            NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6BplbqkittWpCgPnsSZA1Ivi39x2EVHiD7kpltGvHQw&s")
         )
        ),
      );
    }
  }