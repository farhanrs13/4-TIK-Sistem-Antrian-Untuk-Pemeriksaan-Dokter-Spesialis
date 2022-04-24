import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rpl/layar/halaman_daftar.dart';
import 'package:rpl/layar/halaman_login.dart';
import 'package:rpl/layar/halaman_utama.dart';
import 'package:rpl/layar/pilih_rs.dart';
// import 'package:logintunisia/screens/signUpScreen.dart';
import '../widget/InputTextWidget.dart';

class Halaman_login2 extends StatefulWidget {
  const Halaman_login2({Key? key}) : super(key: key);
 
  @override
  State<Halaman_login2> createState() => _Halaman_login2();
}
 
class _Halaman_login2 extends State<Halaman_login2> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
          
      body :SingleChildScrollView( 
        child:
        Column(
        children:<Widget> [
          Padding(
          padding: EdgeInsets.all(16.0)),
          Center(
            child:Image.asset('assets/images/hallogin1.png'), 
          ),
          Padding(
          padding: EdgeInsets.all(30.0)),
          Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 295, 5),
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
                    ),),
                    Padding(
                    padding: EdgeInsets.all(15.0)),
                    Container(
                    height: 55,
                    width: 370,
                    child:Row(
                      children: [
                      Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child:
                        Text("RSUD Zainal Abidin"),),
                        Padding(
                        padding: EdgeInsets.all(85.0)),
                        IconButton(
                    icon: Image.asset('assets/images/logo.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pilih_rs()));
                    },   
                    ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff4EC72D),width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color.fromARGB(255, 255, 255, 255),

                  ),
                ),
                Padding(
                padding: EdgeInsets.all(25.0)),
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
                          MaterialPageRoute(builder: (context) => Utama()),
                        );
                        },
                        child: Text(
                          "Login",
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
                    Image.asset('assets/images/hallogin2.png'),
                    Padding(
                    padding: EdgeInsets.all(5.0)),
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
                          MaterialPageRoute(builder: (context) => Halaman_login()),
                        );
                        },
                        child: Text(
                          "Email",
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
                      child:Transform.scale(
                    scale: 1.1,
                    child:IconButton(
                    iconSize: 100,
                    icon: Image.asset('assets/images/hallogin4.png'),
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Halaman_daftar()),
                        );},   
                    ),
                  ),),
                      ],
                    )
                    ],
          )
        ),
    ));
        }}