import 'package:aplikasi_nonton_id/config/costum_colors.dart';
import 'package:aplikasi_nonton_id/pages/login_page.dart';
import 'package:aplikasi_nonton_id/widgets/textbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MainColors.backgrounColor,
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
  const _FormBody({super.key});

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
          'Daftar',
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
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
                  labelText: 'alamat email',
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade800,
                  ),
                  fillColor: const Color.fromRGBO(47, 44, 68, 1),
                  filled: true,
                  contentPadding: const EdgeInsets.all(10.0),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.email_outlined),
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
              ),
              const SizedBox(height: 10),
              TextFormField(
                style: const TextStyle(color: Colors.white),
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
                  ),
                ),
                obscureText: true,
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
                    labelText: 'ulangi password',
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
                    'Sudah Punya Akun?',
                    style: GoogleFonts.openSans(
                      textStyle: const TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                      ),
                    ),
                  ),
                  const TextButtonMasuk()
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
    return Container(
      width: double.infinity,
      height: 90.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          'Daftar',
          style: GoogleFonts.openSans(
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
