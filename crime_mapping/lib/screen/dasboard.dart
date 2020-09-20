import 'package:crime_mapping/screen/form_laporan_screen.dart';
import 'package:crime_mapping/screen/riwayat_laporan_screen.dart';
import 'package:crime_mapping/shareds/theme.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  EdgeInsetsGeometry _margin = EdgeInsets.fromLTRB(20, 10, 20, 10);
  EdgeInsetsGeometry _padding = EdgeInsets.all(30);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          menuCard(
            'Membuat Laporan',
            'assets/laporan.png',
            Colors.teal,
            Colors.amber[100],
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormLaporanScreen()));
            },
          ),
          menuCard(
            'Riwayat Laporan',
            'assets/riwayat1.png',
            Colors.black,
            Colors.amber[100],
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RiwayatLaporanScreen()));
            },
          ),
        ],
      ),
    );
  }

  menuCard(String text, String image, Color color1, Color color2,
      {Function onTap}) {
    double _height = MediaQuery.of(context).size.height / 4;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: _margin,
        padding: _padding,
        height: _height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ],
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [color1, color2],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: blackTextFont.copyWith(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Image.asset(
              image,
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
