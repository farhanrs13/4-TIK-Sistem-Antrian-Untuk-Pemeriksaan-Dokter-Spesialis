import 'package:flutter/material.dart';
import 'package:rpl/layar/booking.dart';
import 'package:rpl/layar/halaman_profil.dart';
import 'package:rpl/layar/infor.dart';
import 'package:rpl/layar/informasi.dart';
import 'package:rpl/layar/pilih_rs.dart';
import 'package:rpl/layar/plih_dokter.dart';

import 'bonus.dart';

//Padding(
                   // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  // child: Image.asset('assets/images/jantung2.png'),
                  //);
List pages1 = [
  profil(),
  Utama(),
  Info(),
  Infor()
];


class Spesialis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child:  
                                Material(
  elevation: 10,
  borderRadius: BorderRadius.all(Radius.circular(10)),
  child: 
                Container(
                    height: 36,
                    width: 133,
                    child: TextButton(
                        style: TextButton.styleFrom( 
                        alignment: Alignment.center,
                        ),
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dokter()),
                        );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/hati.png'),
                          
                        
                        Text(
                          "Spesialsi",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                         ),),
                         Text(
                          "Jantung",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                        
 
                          ),
                ),
                Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child:
                Text(
                          "3 Dokter",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                        
 
                          ),)
                ),
                         ])
                ),
                    decoration: BoxDecoration(
                      
                      //border: Border.all(color: Color(0xff4EC72D)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xffFF5978),
                    )
                    ),
                    ));
                  
    }
                  }

class Orang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child:  
                                Material(
  elevation: 10,
  borderRadius: BorderRadius.all(Radius.circular(10)),
  child: 
                Container(
                    height: 36,
                    width: 133,
                    child: TextButton(
                        style: TextButton.styleFrom( 
                        alignment: Alignment.center,
                        ),
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Booking()),
                        );
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                    width: 143,
                              child:
                            Image.asset('assets/images/foto.png'),
                            decoration: BoxDecoration(
                      
                      //border: Border.all(color: Color(0xff4EC72D)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    )),
                        Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),),  
                        
                        Text(
                          "dr. Ihsan",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                         ),),
                         Text(
                          "Spesialis Jantung",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                        
 
                          ),
                ),
                         ])
                ),
                    decoration: BoxDecoration(
                      
                      //border: Border.all(color: Color(0xff4EC72D)),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Color(0xffEBF1FA),
                    )
                    ),
                    ));
                  }
                  }
  


final List<Widget> spesialis = [
  Spesialis(),
  Spesialis(),
  Spesialis(),
  Spesialis(),
  Spesialis(),
  Spesialis(),
  Spesialis(),
  Spesialis(),

];

final List<Widget> teratas = [
  Orang(),
  Orang(),
  Orang(),
  Orang(),
  Orang(),
  Orang(),
  Orang(),
  Orang(),

];



class Utama extends StatefulWidget {
  const Utama({Key? key}) : super(key: key);
 
  @override
  State<Utama> createState() => _Utama();
}
 
class _Utama extends State<Utama> {
  @override
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(book);
      if(book == 0){
        if ( _selectedIndex == 2 ){
        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pages1[3]),);
          
  
} else {
    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pages1[_selectedIndex]),

                        );
}}
if (book == 1){
Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pages1[_selectedIndex]),);
}
      

    });
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: SafeArea(
          top: true,
          child: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
          bottomNavigationBar: BottomNavigationBar(
            
        
            backgroundColor: Color(0xff4EC72D),


            selectedFontSize: 15,
            selectedIconTheme: IconThemeData(color: Colors.white, size: 30),
            selectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Utama',
                
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'List',
                
              ),

            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
     
          body:  
          SingleChildScrollView( 
            child:
            

            Column(
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                   child: Image.asset('assets/images/logoutama.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(45, 8, 0, 0),
                   child: Image.asset('assets/images/pengaturan.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                   child: Image.asset('assets/images/notifikasi.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 2, 0),
                    
                   child: Transform.scale(
                    scale: 1.5,
                    child:IconButton(
                    //iconSize: 50,
                    icon: Image.asset('assets/images/favorit.png'),
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Bonus()),
                        );},   
                    ),
                  ),
                  ),
                  ]),
               Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),),
                    SizedBox(
                      height: 41,
                      width: 380,
                      child: TextField(
                        decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffEBF1FA),
                        
                        border: 
                          OutlineInputBorder(
                            borderRadius: const BorderRadius.all(Radius.circular(50.0),),),
                            hintText: 'Pencarian',
                            contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                            prefixIcon: Icon(Icons.search)
                      ),
                    )), 
                  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 140, 20),
                   child: Image.asset('assets/images/dokter.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                   child: Image.asset('assets/images/all.png'),
                  ), ],
                      ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child:
                  SizedBox(
                      height: 190,
                      width: 370,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: spesialis,
                      ),
                    ),),
                  Row(
                    children: [
                    Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 150, 20),
                   child: Image.asset('assets/images/dokter2.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                   child: Image.asset('assets/images/all.png'),
                  ), ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child:
                  SizedBox(
                      height: 160,
                      width: 370,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: teratas,
                      ),
                    ),),
                    ],
                  )
            ]
          )
      ),
    )
    ));
  }
}

class _selectedIndex {
}



















