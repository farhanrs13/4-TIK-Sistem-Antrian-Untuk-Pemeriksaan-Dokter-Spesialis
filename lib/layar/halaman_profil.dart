import 'package:flutter/material.dart';
import 'package:rpl/layar/booking.dart';
import 'package:rpl/layar/informasi.dart';
import 'package:rpl/layar/pilih_rs.dart';
import 'package:rpl/layar/plih_dokter.dart';
import 'package:rpl/layar/halaman_utama.dart';

import 'bonus.dart';





class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);
 
  @override
  State<profil> createState() => _profil();
}
 
class _profil extends State<profil> {
  @override
  int _selectedIndex = 0;
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
            child: Text('''Belum siap
masih dalam 
pekerjaan
lope <3 
by depeloper''', 
style: TextStyle(
  fontSize: 60
)),
            

            
      ),
    )
    ));
  }
}

class _selectedIndex {
}



















