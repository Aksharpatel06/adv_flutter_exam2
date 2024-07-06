import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'componects/button_to_next_screen.dart';
import 'componects/splash_title.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('asset/splash/image 1.png'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              slpashTitle(height),
              Text(
                'Let’s \nCooking',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 70,
                  height: 1.1,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffffffff),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Text(
                'Find best recipes for cooking',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              buttonToNext(height, context, width),
            ],
          ),
        ),
      ),
    );
  }
}
