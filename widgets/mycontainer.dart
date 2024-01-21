import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myContainer(
    bool val, String text, String subtitle, String bottom, IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      width: 580,
      height: 180,
      decoration: const BoxDecoration(
          color: Color(0xff2D2E32),
          borderRadius: BorderRadius.all(Radius.circular(9))),
      child: Center(
        child: SizedBox(
          width: 500, height: 110,
          // color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.robotoMono(
                        fontSize: 20,
                        color: val ? const Color(0xff66edab) : Colors.white),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    icon,
                    color: val ? const Color(0xff66edab) : Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                // "Create digital products with unique ideas",
                subtitle,
                style: GoogleFonts.robotoMono(
                    fontSize: 13, color: const Color(0xff808184)),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                // "2 PROJECTS",
                bottom,
                style: GoogleFonts.robotoMono(fontSize: 13),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
