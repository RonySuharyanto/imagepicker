import 'package:crime_mapping/widget/profil_heading.dart';
import 'package:crime_mapping/widget/profile_list.dart';
import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //background
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 350.0),
          color: Colors.white,
          child: ProfileList(
            icon1: Icons.supervisor_account,
            text1: 'Renakta',
            icon2: Icons.local_phone,
            text2: '08567080999',
            icon3: Icons.wc,
            text3: 'laki-laki',
            icon4: Icons.home,
            text4: 'jl.kesasar buntu',
            icon5: Icons.check,
            text5: 'Simpan',
          ),
        ),
        //heading
        Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue),
        //profileheading
        ProfileHeading(
            image: AssetImage('assets/usdin.jpg'), nama: 'kentung', email: ''),
      ],
    ));
  }
}
