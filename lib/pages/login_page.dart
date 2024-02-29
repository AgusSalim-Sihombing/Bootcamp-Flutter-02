import 'package:aplikasi_nonton_id/config/costum_colors.dart';
import 'package:aplikasi_nonton_id/widgets/button_widget.dart';
import 'package:aplikasi_nonton_id/widgets/textbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.backgrounColor,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: _FormBody(),
              ),
            ),
          ),
          _FormAction(),
        ],
      ),
    );
  }
}

class _FormBody extends StatelessWidget {
  const _FormBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NONTON',
              style: GoogleFonts.exo(
                textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              '\u25A0',
              style: GoogleFonts.exo(
                textStyle: const TextStyle(
                  color: Color.fromRGBO(255, 222, 51, 1),
                  fontSize: 12,
                ),
              ),
            ),
            Text(
              'ID',
              style: GoogleFonts.exo(
                textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(255, 222, 51, 1),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          'Masuk',
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: 'username',
                  hintText: 'jhon doe',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade800,
                  ),
                  fillColor: const Color.fromRGBO(47, 44, 68, 1),
                  filled: true,
                  contentPadding: const EdgeInsets.all(10.0),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.person_outline_rounded),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    labelText: 'password',
                    hintText: '',
                    fillColor: const Color.fromRGBO(47, 44, 68, 1),
                    filled: true,
                    contentPadding: const EdgeInsets.all(10.0),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Icon(Icons.lock),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Belum Punya Akun?',
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                      ),
                    ),
                  ),
                  const TextButtonDaftar()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FormAction extends StatelessWidget {
  const _FormAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const ButtonMasuk();
  }
}
