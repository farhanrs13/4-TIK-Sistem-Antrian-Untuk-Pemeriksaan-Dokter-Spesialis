 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rpl/layar/halaman_login.dart';
import 'package:rpl/layar/halaman_utama.dart';
import 'package:rpl/layar/pilih_rs.dart';
// import 'package:logintunisia/screens/signUpScreen.dart';
import '../widget/InputTextWidget.dart';

class Halaman_daftar extends StatefulWidget {
  const Halaman_daftar({Key? key}) : super(key: key);
 
  @override
  State<Halaman_daftar> createState() => _Halaman_daftar();
}
 
class _Halaman_daftar extends State<Halaman_daftar> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
          
      body :
      SingleChildScrollView( 
        child:
        Column(
        children:<Widget> [
          Padding(
          padding: EdgeInsets.all(16.0)),
          Center(
            child:Image.asset('assets/images/logodaftar.png'), 
          ),
          Padding(
          padding: EdgeInsets.all(16.0)),
          Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 330, 5),
          child: Text('Email', 
            style: TextStyle(fontSize: 15))),
          Container(
                      height: 55,
                      width: 370,
                      child: TextField(
                        decoration: InputDecoration(
                        hintText: 'Masukkan email anda',
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        ),
                        border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        )                 
                      ),
                    ),),
              Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 300, 5),
          child: Text('Password', 
            style: TextStyle(fontSize: 15))),
              Container(
                      height: 55,
                      width: 370,
                      child: TextField(
                        decoration: InputDecoration(
                        hintText: 'Masukkan password anda',
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        ),
                        border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        )                         
                      ),
                    ),
                      ),
                      Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 258, 5),
          child: Text('Ulangi password', 
            style: TextStyle(fontSize: 15))),
          Container(
                      height: 55,
                      width: 370,
                      child: TextField(
                        decoration: InputDecoration(
                        hintText: 'Masukkan ulang password',
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        ),
                        border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        )                 
                      ),
                    ),),
              Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 295, 5),
          child: Text('No telepon', 
            style: TextStyle(fontSize: 15))),
              Container(
                      height: 55,
                      width: 370,
                      child: TextField(
                        decoration: InputDecoration(
                        hintText: 'Masukkan No telepon anda',
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2.0),
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        ),
                        border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(20.0),)
                        )                         
                      ),
                    ),
                      ),
                      
                    
                Padding(
                padding: EdgeInsets.all(16.0)),
                Container(
                    height: 36,
                    width: 310,
                    child: TextButton(
                        style: TextButton.styleFrom( 
                        alignment: Alignment.center,
                        ),
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pilih_rs()),
                        );
                        },
                        child: Text(
                          "Daftar",
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
                    Padding(
                    padding: EdgeInsets.all(5.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/hallogin3.png'),
                        Padding(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 3),
                      child:Image.asset('assets/images/hallogin4.png') ,),
                      ],
                    )
                    ],
          )
        ),
    ));
        }}