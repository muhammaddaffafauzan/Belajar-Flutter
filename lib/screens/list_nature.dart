import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';
import 'package:belajar/screens/detail_nature.dart';

class ListNatureScreen extends StatelessWidget {
  final List<Map<String, dynamic>> natureData = [
    {
      "nama": "Danau PDAM",
      "negara": "bojong soang",
      "image": "images/nature1.jpeg",
      "desc": "ini bojong soang",
      "harga": 10000
    },
    {
      "nama": "pegunungan everest",
      "negara": "nepal",
      "image": "images/nature2.jpeg",
      "desc": "tempat yang indah.",
      "harga": 200000
    },
    {
      "nama": "green land",
      "negara": "swiss",
      "image": "images/nature3.jpeg",
      "desc": "ini tempat yang sangat indah dan tenang",
      "harga": 3500000
    },
    {
      "nama": "danau sipatengang",
      "negara": "indonesia",
      "image": "images/nature4.jpeg",
      "desc": "ini danau yang di tengah nya ada pulau kecil",
      "harga": 15000
    },
    {
      "nama": "sungai citarum",
      "negara": "indonesia",
      "image": "images/nature5.jpeg",
      "desc": "ini sungai tebersih dan terpanjang di dunia",
      "harga": 15000
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Nature'),
        backgroundColor: Colors.green,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios, color: Colors.black),
            onTap: () {
             Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ), // Hapus latar belakang appbar
        elevation: 0, // Hilangkan bayangan appbar
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: natureData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailNatureScreen(
                        nama: natureData[index]["nama"],
                        negara: natureData[index]["negara"],
                        image: natureData[index]["image"],
                        desc: natureData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: displayHeight(context) * 0.25,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${natureData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    child: Text(
                      "${natureData[index]["nama"]} - ${natureData[index]["negara"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
