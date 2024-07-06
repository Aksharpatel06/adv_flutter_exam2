import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column titleAndSearch(double height, double width) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 24.0, bottom: 24),
        child: Text(
          'Find best recipes \nfor cooking',
          textAlign: TextAlign.start,
          style: GoogleFonts.inter(
            fontSize: 27,
            height: 1.2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(
        height: height * 0.01,
      ),
      Container(
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Colors.grey)),
        child: Row(
          children: [
            SizedBox(
              width: width * 0.02,
            ),
            const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Text(
              'Search recipes',
              style: GoogleFonts.inter(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    ],
  );
}
