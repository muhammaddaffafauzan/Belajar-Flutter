import 'package:flutter/material.dart';

class ListItem {
  final String imageUrl;
  final String aritikel;
  final String text;
  final String gallery;
  final String pemain;

  ListItem(this.imageUrl, this.aritikel, this.text, this.gallery, this.pemain);
}

class LatihanListBuilder extends StatelessWidget {
  LatihanListBuilder({super.key});

  final List<ListItem> itemList = [
    ListItem(
        "https://i0.wp.com/api.jatimnet.com/jinet/assets/media/news/news/image_front/persib.png.780x439_q85.png",
        "PERSIB adalah klub sepak bola Indonesia yang berbasis di Kota Bandung",
        "persib",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReHBDt_MeGfMc97w720k_ofSHfxvSBFoGcSw&usqp=CAU",
        "https://pbs.twimg.com/media/FQYaOk1aIAEz-BS.png"),
    ListItem(
        "https://i0.wp.com/api.jatimnet.com/jinet/assets/media/news/news/image_front/persib.png.780x439_q85.png",
        "PERSIB adalah klub sepak bola Indonesia yang berbasis di Kota Bandung",
        "persib",
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/05/24/persib-1222910899.jpg",
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/07/24/757303138.png"),
    ListItem(
        "https://i0.wp.com/api.jatimnet.com/jinet/assets/media/news/news/image_front/persib.png.780x439_q85.png",
        "PERSIB adalah klub sepak bola Indonesia yang berbasis di Kota Bandung",
        "persib",
        "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/04/02/Screenshot_20230402_005633_Gallery-2460527671.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3sCnI_W5UANdGRDxOiToRUIzr9pihtPPU4Q&usqp=CAU"),
    ListItem(
        "https://i0.wp.com/api.jatimnet.com/jinet/assets/media/news/news/image_front/persib.png.780x439_q85.png",
        "PERSIB adalah klub sepak bola Indonesia yang berbasis di Kota Bandung",
        "persib",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBbnpHIYererKK0ramLGNv5U3aOruzSGoOKQ&usqp=CAU",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB-mkde9bnS-83mivywIqStzSz51sQazrnMQ&usqp=CAU"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 585,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 22, 23, 90),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLWGdgDWHN8JUONrPh1TqH5PqAhktQKMi0xA&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 400,
                height: 150,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.separated(
                  itemCount: itemList.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        height: 110,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(itemList[index].imageUrl),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100, // Adjust the width as needed
                                  child: Text(
                                    itemList[index].aritikel,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
          Center(
              child: Text(
            "Gallery",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(itemList[index].gallery),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
          Center(
              child: Text(
            "Pemain Persib",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(itemList[index].pemain),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}
