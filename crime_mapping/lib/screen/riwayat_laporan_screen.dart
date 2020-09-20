import 'package:crime_mapping/models/laporan_model.dart';
import 'package:crime_mapping/shareds/sizeconfig.dart';
import 'package:crime_mapping/shareds/theme.dart';
import 'package:crime_mapping/widget/riwayatlaporan_card.dart';
import 'package:flutter/material.dart';

class RiwayatLaporanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeTheme().init(context);
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Text('Riwayat Laporan')),
      body: Container(
        width: SizeTheme.screenWidth,
        height: SizeTheme.screenHeight,
        color: whiteColor,
        child: Column(
          children: listRiwayatLaporan
              .map((e) => Container(
                  margin: EdgeInsets.all(5), child: RiwayatLaporanCard(e)))
              .toList(),
        ),
      ),
    );
  }
}
