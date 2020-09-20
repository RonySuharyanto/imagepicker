import 'package:crime_mapping/screen/login_screen.dart';
import 'package:crime_mapping/widget/button.dart';
import 'package:crime_mapping/widget/text_input.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomertelponController = TextEditingController();
  final TextEditingController jeniskelaminController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
        return;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: EdgeInsets.only(left: 30, right: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //foto
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/logo_profil.png'))),
                  ),
                  SizedBox(height: 50),
                  //email
                  TextInputForm(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    hintText: "Masukkan email",
                    controller: widget.namaController,
                  ),
                  SizedBox(height: 20),
                  //password
                  TextInputForm(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    hintText: "Masukkan password",
                    controller: widget.emailController,
                  ),
                  SizedBox(height: 20),
                  //nama
                  TextInputForm(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    hintText: "Masukkan nama",
                    controller: widget.passwordController,
                  ),
                  SizedBox(height: 20),
                  //nomer telpon
                  TextInputForm(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    hintText: "Nomer Telpon",
                    controller: widget.nomertelponController,
                  ),
                  SizedBox(height: 20),
                  //jenis kelamin
                  TextInputForm(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    hintText: "Jenis Kelamin",
                    controller: widget.jeniskelaminController,
                  ),
                  SizedBox(height: 20),
                  //alamat
                  TextInputForm(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    hintText: "Alamat",
                    controller: widget.alamatController,
                  ),
                  SizedBox(height: 20),
                  //button register
                  ButtonForm(
                    color: Colors.lightBlue,
                    onPressed: () {},
                    text: 'Daftar',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
