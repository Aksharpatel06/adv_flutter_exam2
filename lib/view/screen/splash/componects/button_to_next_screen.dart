import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/home_screen.dart';

Column buttonToNext(double height, BuildContext context, double width) {
  return Column(
    children: [
      SizedBox(
        height: height * 0.06,
      ),
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
        },
        child: Container(
          width: width*0.48,
          height: height*0.07,
          padding:
          const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          decoration: ShapeDecoration(
            color: Color(0xFFE23E3E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  child: Text(
                    'Start cooking',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 20,
              )
            ],
          ),
        ),
      ),
    ],
  );
}
