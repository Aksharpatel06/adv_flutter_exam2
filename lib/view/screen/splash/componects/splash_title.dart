import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column slpashTitle(double height) {
  return Column(
    children: [
      SizedBox(
        height: height * 0.02,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 17,
          ),
          Text(
            '  60K+ ',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            '  Premium recipes ',
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(
        height: height * 0.5,
      ),
    ],
  );
}
