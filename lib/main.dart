import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rpl/layar/bonus.dart';
import 'package:rpl/layar/booking.dart';
import 'package:rpl/layar/halaman_daftar.dart';
import 'package:rpl/layar/halaman_utama.dart';
import 'package:rpl/layar/infor.dart';
import 'package:rpl/layar/pilih_rs.dart';
import 'package:rpl/layar/plih_dokter.dart';
//import 'package:get/get.dart';
import 'layar/halaman_login.dart';
import 'layar/halaman_login2.dart';
import 'layar/halaman_pembukaan.dart';
import 'layar/informasi.dart';

void main() {
  runApp(Apploen());
}

class Apploen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Lope <3 :)',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Pembukaan(),
    );
  }
}