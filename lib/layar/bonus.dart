import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:logintunisia/screens/signUpScreen.dart';
import '../widget/InputTextWidget.dart';



class Bonus extends StatefulWidget {
  const Bonus({Key? key}) : super(key: key);
 
  @override
  State<Bonus> createState() => _Bonus();
}
 
class _Bonus extends State<Bonus> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
          
      body : Column(
        children: [
          Padding(
          padding: EdgeInsets.all(60.0)),
          Center(
        child: 
      Text(
   """Lagu rossa""",
   style: TextStyle(fontSize: 70),
    )
    ),
    Padding(
    padding: EdgeInsets.all(60.0)),
    Container(
                    height: 36,
                    width: 310,
                    child: TextButton(
                        style: TextButton.styleFrom( 
                        alignment: Alignment.center,
                        ),
                        onPressed: () {
                        },
                        child: Text(
                          "Stop music",
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
                    ),]
    
    )
    ));}}