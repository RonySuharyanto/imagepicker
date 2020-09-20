import 'dart:io';

import 'package:crime_mapping/shareds/sizeconfig.dart';
import 'package:crime_mapping/shareds/theme.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:crime_mapping/widget/text_input.dart';
import 'package:image_picker/image_picker.dart';

class FormLaporanScreen extends StatefulWidget {
  static final routName = '/form_laporan';

  @override
  State<StatefulWidget> createState() {
    return _FormLaporanScreenState();
  }
}

class _FormLaporanScreenState extends State<FormLaporanScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nomertelponController = TextEditingController();
    TextEditingController alamatController = TextEditingController();
    TextEditingController keteranganController = TextEditingController();
    File _image;
    final picker = ImagePicker();

    Future getImage() async {
      final pickedFile = await picker.getImage(source: ImageSource.camera);

      setState(() {
        _image = File(pickedFile.path);
      });
    }

    List<String> listKejahatan = [
      'curanmor',
      'Tawuran',
      'Curas',
      'Curat',
      'Begal',
    ];

    var kejahatan = 'Tawuran';

    //SizeTheme().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Pengaduan'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(20.0),
        child: Container(
          width: SizeTheme.screenWidth,
          height: SizeTheme.screenHeight,
          color: whiteColor,
          child: ListView(
            children: [
              //jenis kejahatan
              SizedBox(height: 20),
              Text(
                'kejahatan',
              ),
              SizedBox(height: 10),
              DropDownField(
                value: kejahatan,
                required: true,
                labelText: 'Pilih Kejahatan',
                items: listKejahatan,
                strict: false,
                setter: (newValue) {
                  setState(() => kejahatan = newValue);
                },
              ),
              SizedBox(height: 20),
              //nomer telpon
              TextInputForm(
                controller: nomertelponController,
                hintText: 'nomer handphone',
                prefixIcon: Icon(Icons.local_phone),
              ),
              SizedBox(height: 20),
              //alamat
              TextInputForm(
                controller: alamatController,
                hintText: 'Alamat',
                prefixIcon: Icon(Icons.home),
              ),
              SizedBox(height: 20),
              //keterangan
              TextInputForm(
                controller: keteranganController,
                hintText: 'Keterangan',
                prefixIcon: Icon(Icons.info),
              ),
              SizedBox(height: 20),
              //widget foto
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (_image == null)
                      ? Image.asset(
                          'assets/gallery-icon.png',
                          height: 100,
                        )
                      : Image.file(
                          _image,
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: getImage,
                        child: Text('Pilih foto dari kamera'),
                        color: Colors.red,
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Pilih foto dari gallery'),
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50),
              //button
              Container(
                height: 60.0,
                child: RaisedButton(
                  child: Text(
                    'SIMPAN',
                  ),
                  color: Colors.lightBlue,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
