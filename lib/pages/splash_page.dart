import 'package:aplikasi_nonton_id/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // Navigate to the login page after the delay
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.transparent],
          ).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splash.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Row(
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
              ),
              Center(
                child: FutureBuilder<int>(
                  future: Future.delayed(const Duration(seconds: 3), () => 1),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // Transition to the login page after the delay
                      return const SizedBox(); // Replace with navigation widget if needed
                    } else {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircularProgressIndicator(),
                          const SizedBox(height: 20.0),
                          Text(
                            'Loading...',
                            style: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
