import 'package:flutter/material.dart';
import 'package:rpl/layar/booking.dart';
import 'package:rpl/layar/halaman_utama.dart';
import 'package:rpl/layar/pilih_rs.dart';
import 'package:rpl/layar/plih_dokter.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dart:math';

int bimbo() {
  var rng = Random();
  
    return(rng.nextInt(100));
  }

var a = bimbo();
var b = a - 2;




class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);
 
  @override
  State<Info> createState() => _Info();
}
 
class _Info extends State<Info> {
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
          
          
            
     
          body:  Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 120, 15),
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
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                   child: Image.asset('assets/images/info.png'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 0, 10),
            child: Image.asset('assets/images/jadwal.png'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Text('Tanggal : '),
                                    Text('$tanggal',
                                    style: TextStyle(
                            color: Color(0xff4EC72D),
                         ),)])
                                      ),
                                      
                    Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Text('Jadwal : '),
                                    Text('$jam',
                                    style: TextStyle(
                            color: Color(0xff4EC72D),
                         ),)])),
                                      Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Text('Pembayaran : '),
                                    Text('$bpjs',
                                    style: TextStyle(
                            color: Color(0xff4EC72D),
                         ),)])),
                                      
                    Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Row(
                                  children: [
                                    Text('Nomor antrean sekarang : '),
                                    Text('$b',
                                    style: TextStyle(
                            color: Color(0xff4EC72D),
                         ),)])
                                      ),]
                                      ),
                    Center(
                      child: 
                      Padding(
      padding: EdgeInsets.fromLTRB(0, 17, 0, 10),
      child: Container(
       
        height: 170,
        width: 170,
        child: 
        Column(
     
          children: [
            Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text('Antrean'), ),
            Padding(
            padding: EdgeInsets.fromLTRB(0, 35, 0, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
              Text('No. ',              
            style: 
            TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40,
            fontWeight: FontWeight.bold
                         ),),
                                    Text('$a',
                                    style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                            
                            
                         ),)])
            
            
    
             ) )

        ]),
        
        
        decoration: BoxDecoration(
          
           border: Border.all(color: Color(0xff4EC72D),width: 2.0),
           borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Color(0xffEBF1FA),
        
        
      ),
    )),),
    Center(
      child: 
    
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
                          MaterialPageRoute(builder: (context) => Booking()),
                        ); book = 0;
                        },
                        child: Text(
                          "Batal",
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
                    ))
                    
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





















