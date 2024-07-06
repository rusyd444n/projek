import 'package:flutter/material.dart';
import 'detailTransportasiScreen.dart';

class Transportasiscreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "tempat": "darat",
      "image": "assets/images/td.jpg",
      "gallery": [
        "assets/images/td1.jpg",
        "assets/images/td2.jpg",
        "assets/images/td3.jpg"
      ],
      "desc": "Transportasi darat merujuk pada segala jenis pergerakan manusia, barang, dan hewan menggunakan jalur darat."
    },
    {
      "tempat": "laut",
      "image": "assets/images/pelabuhan.jpg",
      "gallery": [
        "assets/images/tl1.jpg",
        "assets/images/tl2.jpg",
        "assets/images/tl3.jpg"
      ],
      "desc": "Transportasi laut adalah sistem transportasi yang menggunakan perairan sebagai jalur utama untuk mengangkut manusia, barang, dan kargo antar pelabuhan, pulau, dan negara. Ini merupakan salah satu moda transportasi tertua dan tetap menjadi pilihan utama untuk perdagangan internasional serta transportasi massal di beberapa wilayah."
    },
    {
      "tempat": "udara",
      "image": "assets/images/bandara1.jpg",
      "gallery": [
        "assets/images/tu1.jpg",
        "assets/images/tu2.jpg",
        "assets/images/tu3.jpg"
      ],
      "desc": "Transportasi udara adalah sistem pengangkutan yang menggunakan pesawat udara untuk mengangkut penumpang dan barang dari satu lokasi ke lokasi lain."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detailtransportasiscreen(
                        tempat: wisataData[index]["tempat"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(wisataData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    wisataData[index]["tempat"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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