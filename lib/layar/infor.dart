import 'package:flutter/material.dart';
import 'package:rpl/layar/booking.dart';
import 'package:rpl/layar/halaman_utama.dart';
import 'package:rpl/layar/pilih_rs.dart';
import 'package:rpl/layar/plih_dokter.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dart:math';




class Infor extends StatefulWidget {
  const Infor({Key? key}) : super(key: key);
 
  @override
  State<Infor> createState() => _Infor();
}
 
class _Infor extends State<Infor> {
  @override
  int _selectedIndex = 2;

  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      
      
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
      
    });print(_selectedIndex);
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
          
          
            
     
          body:  Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 105, 15),
                   child: Transform.scale(
                    scale: 1.4,
                    child:IconButton(
                    //iconSize: 50,
                    icon: Image.asset('assets/images/back.png'),
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Utama()),
                        );},   
                    ),
                  ),),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                   child: Image.asset('assets/images/info.png'),
                  ),
                ],
              ),
              Padding(
      padding: EdgeInsets.fromLTRB(0, 45, 0, 60),
      child: Container(
        height: 405,
        width: 370,
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            
                  
                 
                    Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Center(
                                  child: 
                                    Text('Belum Booking ',
                                    style: TextStyle(
                                      fontSize:40 ),),
                                    )
                                      ),
                                      Center(
                                        child: 
                                        Text('Antrian :)',
                                    style: TextStyle(
                                      fontSize:40 ),),),
                                      
                                      Center(
                                        child: 
                                        Text('Booking dulu',
                                    style: TextStyle(
                                      fontSize:40 ),),),
                                      Center(
                                        child: 
                                        Text('Ochey ;)',
                                    style: TextStyle(
                                      fontSize:40 ),),),
        
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
    );
  }
}





















