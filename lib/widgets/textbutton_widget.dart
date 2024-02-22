import 'package:aplikasi_nonton_id/pages/login_page.dart';
import 'package:aplikasi_nonton_id/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//this is TextButton for Regist while Login
class TextButtonDaftar extends StatelessWidget {
  const TextButtonDaftar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        'Daftar',
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterPage(),
            ),
                (route) => false);
      },
    );
  }
}

class TextButtonMasuk extends StatelessWidget {
  const TextButtonMasuk({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        'Masuk',
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ),
                (route) => false);
      },
    );
  }
}

