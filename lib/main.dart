import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jaran App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
    home: const MyJajan(),
    );
  }
}

class MyJajan extends StatefulWidget {
  const MyJajan({super.key});
  @override
State<MyJajan> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyJajan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_rounded, color: Colors.grey[850]),
        title: Text("Daftar Jajanan Lebaran", style: TextStyle(
          fontWeight: .bold,
          fontSize: 22,
          color: Colors.grey[850]
          ),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsetsGeometry.only(right: 15),  
            child: Icon(Icons.shopping_bag, color: Colors.grey[850],),        
          ),
        ], 
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(),
        children: [
          kartujajan('assets/images/nastar.png', "Nastar", "Manis, Gurih", "Lembut, Lumer", 5, 1247),
          kartujajan('assets/images/putrisalju.png', "Putri Salju", "Manis", "Lembut", 4,60),
          kartujajan('assets/images/kastengel.png', "Kastengel", "Asin, Gurih", "Renyah, Padat", 4, 1500),
          kartujajan('assets/images/sagukeju.png', "Sagu Keju", "Manis santan, Asin Keju", "Ringan, Lumer, Lumer", 5, 10000),
          kartujajan('assets/images/kuekacang.png', "Kue Kacang", "Asin, Gurih", "Lembut, Lumer", 3, 20),
          kartujajan('assets/images/lidahkucing.png', "Lidah Kucing", "Manis, Gurih", "Lembut, Lumer", 4, 100),
          kartujajan('assets/images/kuesemprit.png', "Kue Semprit", "Manis", "Renyah, Empuk", 4, 100),
          kartujajan('assets/images/kacangbawang.png', "Kacang Bawang", "Asin, Gurih", "Keras, renyah, garing", 4, 100),
          kartujajan('assets/images/kacangtelur.png', "Kacang Telur", "Manis, Gurih", "keras renyah di luar", 4, 100),
          kartujajan('assets/images/kembanggoyang.png', "Kembang Goyang", "Manis wijen", "tipis, garing, rapuh", 4, 100),
          kartujajan('assets/images/empingmlinjo.png', "Emping Melinjo", "Gurih, Pahit khas", "Garing, renyah", 4, 100),
          kartujajan('assets/images/rengginang.png', "Rengginang", "Gurih Ketan", "Renyah, Mekar", 4, 100),
          kartujajan('assets/images/madumongso.png', "Madumongso", "Manis legit", "Lembut, Lengket, Kenyal", 4, 100),
          kartujajan('assets/images/suskering.png', "Sus Kering Cokelat", "Manis, Gurih", "Renyah, Lumer", 4, 383),
          kartujajan('assets/images/kuemonas.png', "Kue Monas", "Manis", "Crunchy, Keras", 5, 250),
        ],
      ),  
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.grey[850],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Beranda" ),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank_rounded), label: "Makanan" ),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Profil")
        ]
      ),
    );
  }
}

//  int like, bool isSuka
Widget kartujajan (String imagePath, String nama, String rasa, String texture, int bintang, int jumlahSuka){
  return Container(
    height: 160,
    margin: const EdgeInsets.symmetric(),
    child: Card(
      color: Colors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: .circular(23)),
      clipBehavior: .antiAlias,
      child: Stack(
        children: [
          Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  imagePath,
                  width: 92,
                  height: 165,
                  fit: .cover,
                ),
              ),
              Expanded(
                child:Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Column(
                    crossAxisAlignment: .start,
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        nama,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: .bold,
                          color: Colors.grey[850]
                        ),
                      ),
                      SizedBox(height: 14,),
                      Text("Rasa:   $rasa", style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),),
                      Text("Texture:   $texture", style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),),
                      SizedBox(height: 14,),
                      Row(children: [
                        for (int i = 1; i <= 5; i++)
                        if (i<= bintang)
                          Icon(
                            Icons.star_rounded,
                            color: Colors.amber[700],
                            size: 18,
                          )
                        else
                            Icon(
                            Icons.star_border_rounded,
                            color: Colors.grey[700],
                            size: 18,
                            ),
                        SizedBox(width: 8,),
                        Text("($bintang.0)", style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 12,
                        ),),
                      ],),
                      
                    ],
                  ),
                ), 
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite_border_rounded, color: Colors.grey,),
            ),
          ),
          Positioned(
            bottom: 17,
            right: 20,
            child: Row(
              children: [
                Icon(Icons.favorite_border_rounded, 
                  size: 20, 
                  color:Colors.grey[700],
                ),
                SizedBox(width: 5),
                Text("$jumlahSuka", style: TextStyle(
                  fontSize: 15, 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}