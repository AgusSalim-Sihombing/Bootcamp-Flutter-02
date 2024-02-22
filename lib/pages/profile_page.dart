import 'package:aplikasi_nonton_id/config/costum_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.backgrounColor,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.openSans(
            textStyle: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
