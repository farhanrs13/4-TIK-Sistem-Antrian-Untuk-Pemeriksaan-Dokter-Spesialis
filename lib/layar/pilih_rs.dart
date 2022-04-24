import 'package:flutter/material.dart';
import 'package:rpl/layar/halaman_login.dart';
import 'package:rpl/layar/halaman_pembukaan.dart';

class Rs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        height: 84,
        width: 370,
        child: Row(
          children: [
          Image.asset('assets/images/logors2.png'), 
          Padding(
          padding: EdgeInsets.all(0)),
          Text('''RSUD Dr. Zainal Abidin

Jl. Teuku. Moh.Daud Beureuh NO.100, 
Bandar baru, Banda Aceh'''),
          Padding(
          padding: EdgeInsets.fromLTRB(0,0,0,0)),
          Transform.scale(
                    scale: 1.4,
                    child:IconButton(
                    //iconSize: 50,
                    icon: Image.asset('assets/images/next.png'),
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Halaman_login()),
                        );},   
                    ),
                  ),
          //Image.asset('assets/images/next.png'),
          ],
        ),
        decoration: BoxDecoration(
           border: Border.all(color: Color(0xff4EC72D)),
           borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color.fromARGB(255, 255, 255, 255),
        
        
      ),
    ));
  }
}

final List<Widget> rs = [
  Rs(),
  Rs(),
  Rs(),
  Rs(),
  Rs(),
  Rs(),
  Rs(),
  Rs(),
  Rs()
  
];

class Pilih_rs extends StatelessWidget {
  get alignment => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          
          body :SingleChildScrollView( 
            child:
            Column(
                  children: <Widget>[
                    Padding(
                    padding: EdgeInsets.all(8.0)),
                    Row(
                    children: <Widget>[
                    IconButton(
                    icon: Image.asset('assets/images/back.png'),
                    iconSize: 50,
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pembukaan()),
                        );},   
                    ),
                    //Image.asset('assets/images/back.png'),
                    Padding(
                    padding: EdgeInsets.all(18.0)), 
                    Image.asset('assets/images/pilihrs1.png'), 
                    ]),
                    Padding(
                    padding: EdgeInsets.all(16.0)),
                    SizedBox(
                      height: 41,
                      width: 370,
                      child: TextField(
                        decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffEBF1FA),
                        border: 
                          OutlineInputBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(50.0),),),
                            hintText: 'Cari RS',
                            contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                            prefixIcon: Icon(Icons.search)
                      ),
                    )),
                    Padding(
                    padding: EdgeInsets.all(5.0)),
                    //Rs(),
                    SizedBox(
                      height: 500,
                      width: 390,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: rs,
                      ),
                    ),
                    ])
      ),
    ));
  }
  }