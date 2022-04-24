import 'package:flutter/material.dart';
import 'package:rpl/layar/informasi.dart';
import 'package:rpl/layar/pilih_rs.dart';
import 'package:rpl/layar/plih_dokter.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:rpl/layar/halaman_utama.dart';
import 'dart:math';

final List lis  =['21 - 04 -2077', '22 - 04 -2077','23 - 04 -2077','24 - 04 -2077','25 - 04 -2077'];
final List lis1 =['''21
Senin''','''22
Selasa''','''23
Rabu''','''24
Senin''','''25
Senin'''];
final List lis2 =['''Pagi, 10:00 AM''','''Malam, 19:00 PM''' ];

final List lis3=['BPJS','Non BPJS'];



var tanggal = '';
var jam = '';
var bpjs = '';
int book = 0;



class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);
 
  @override
  State<Booking> createState() => _Booking();
}
 
class _Booking extends State<Booking> {
  @override
  int _selectedIndex = 1;
  


  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
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
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 110, 15),
                   child: Transform.scale(
                    scale: 1.4,
                    child:IconButton(
                    //iconSize: 50,
                    icon: Image.asset('assets/images/back.png'),
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dokter()),
                        );},   
                    ),
                  ), ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                   child: Image.asset('assets/images/pilihdokter.png'),
                  ),
                ],
              ),
              Foto(),
              Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        height: 405,
        width: 370,
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: Text('Tanggal berobat'),
                  ),
                  ToggleSwitch(
                      minWidth: 90.0,
                      minHeight: 45,
                      initialLabelIndex: 2,
                      customWidths: [62,62,62,62,62],
                      cornerRadius: 5.0,
                      activeBgColor: [Colors.green],
                      activeFgColor: Colors.black,
                      inactiveBgColor: Colors.white,
                      inactiveFgColor: Colors.grey[900],
                      totalSwitches: 5,
                      labels: [lis1[0],lis1[1],lis1[2],lis1[3],lis1[4]],
                      borderWidth: 2.0,
                      borderColor: [Colors.green],
                      onToggle: (index) {
                        int square(index) {
  assert(index != null); // for debugging
  if (index == null) throw Exception();
  return index;
}
var a = square(index);
print(a);
print(lis[a]);
tanggal = lis[a];

                      },
                    ),
                    Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text('Tanggal berobat'),
                                      ),
                                      ToggleSwitch(
                      minWidth: 90.0,
                      minHeight: 45,
                      initialLabelIndex: 2,
                      cornerRadius: 5.0,
                      customWidths: [155, 155.0],
                      activeBgColor: [Colors.green],
                      activeFgColor: Colors.black,
                      inactiveBgColor: Colors.white,
                      inactiveFgColor: Colors.grey[900],
                      totalSwitches: 2,
                      labels: ['''Pagi
10:00 AM''', '''Malam
19:00 PM'''],
                      iconSize: 30.0,
                      borderWidth: 2.0,
                      borderColor: [Colors.green],

                      onToggle: (index) {
                        print('switched to: $index');
                         int square(index) {
  assert(index != null); // for debugging
  if (index == null) throw Exception();
  return index;
}
var a = square(index);
print(a);
print(lis2[a]);
jam = lis2[a];
                      },
                    ),
                    Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text('Tanggal berobat'),
                                      ),
                                      ToggleSwitch(
                      minWidth: 90.0,
                      minHeight: 45,
                      initialLabelIndex: 2,
                      customWidths: [155, 155],
                      cornerRadius: 5.0,
                      activeBgColor: [Colors.green],
                      activeFgColor: Colors.black,
                      inactiveBgColor: Colors.white,
                      inactiveFgColor: Colors.grey[900],
                      totalSwitches: 2,
                      labels: ['BPJS', 'Non BPJS'],
                      borderWidth: 2.0,
                      borderColor: [Colors.green],
                      
                      onToggle: (index) {
                        print('switched to: $index');
                         int square(index) {
  assert(index != null); // for debugging
  if (index == null) throw Exception();
  return index;
}
var a = square(index);
print(a);
print(lis3[a]);
bpjs = lis3[a];
                      },
                    ),
                    Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text('Tanggal berobat'),
                                      ),
                    SizedBox(
                    height: 115,
                    width: 320,
                    child:
                    TextField(
                      //controller: textarea,
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      
                      decoration: InputDecoration( 
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0),)
                        ),
                         hintText: "isi keluhan",
                         focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.redAccent),
                            borderRadius: const BorderRadius.all(Radius.circular(5.0),
                         )
                      ),
                    ),)),
                Padding(
                                padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
                                child:   
                Container(
                    height: 36,
                    width: 310,
                    child: TextButton(
                        style: TextButton.styleFrom( 
                        alignment: Alignment.center,
                        ),
                        onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Info()),
                         
                        );book = 1;
                        int bimbo() {
  var rng = Random();
  
    return(rng.nextInt(100));
  }

var a = bimbo();
var b = a - 2;
                        },
                        child: Text(
                          "Mendaftar",
                          style: TextStyle(
                            color: Color(0xff000000),
                            
                          ),
                ),
                ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff4EC72D)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0xff4EC72D),
                    )
                    ),
                    )
                    
          ],
        ),
        decoration: BoxDecoration(
           border: Border.all(color: Color(0xff4EC72D),width: 2.0),
           borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      )
      ),
      
    
            ],
          )
        
      )
    )
    ));
  }
}





















