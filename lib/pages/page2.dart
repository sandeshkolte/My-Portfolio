import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion/motion.dart';
import 'package:portfolio/widgets/mycontainer.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isHovering1 = ValueNotifier(false);
    ValueNotifier<bool> isHovering2 = ValueNotifier(false);
    ValueNotifier<bool> isHovering3 = ValueNotifier(false);

    return Container(
        height: 830,
        decoration: const BoxDecoration(color: Color(0xff25262A)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Motion.elevated(
              elevation: 100,
              glare: false,
              shadow: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ValueListenableBuilder(
                    valueListenable: isHovering1,
                    builder: (context, value, child) => InkWell(
                      onHover: (val) {
                        isHovering1.value = val;
                      },
                      onTap: () {},
                      child: myContainer(
                          isHovering1.value,
                          "Design",
                          "Create digital products with unique ideas",
                          "2 PROJECTS",
                          Icons.layers_outlined),
                    ),
                  ),
                  ValueListenableBuilder(
                      valueListenable: isHovering2,
                      builder: (context, value, child) => InkWell(
                            onHover: (val) {
                              isHovering2.value = val;
                            },
                            onTap: () {},
                            child: myContainer(
                                isHovering2.value,
                                "Front-End",
                                "I develop front-end with coding super smooth",
                                "5 PROJECTS",
                                Icons.code_outlined),
                          )),
                  ValueListenableBuilder(
                      valueListenable: isHovering3,
                      builder: (context, value, child) => InkWell(
                            onHover: (val) {
                              isHovering3.value = val;
                            },
                            onTap: () {},
                            child: myContainer(
                                isHovering3.value,
                                "SEO",
                                "Boost your business with SEO optimize",
                                "3 PROJECTS",
                                Icons.commit_rounded),
                          ))
                ],
              ),
            ),
            const SizedBox(
              width: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 130,
                ),
                Text("Introduce",
                    style: GoogleFonts.robotoMono(
                        fontSize: 13, color: const Color(0xff808184))),
                const SizedBox(
                  height: 30,
                ),
                Text("Hello! I'am Sandesh\nKolte",
                    style: GoogleFonts.robotoMono(fontSize: 40)),
                const SizedBox(
                  height: 50,
                ),
                Text("Every great design begin with an\neven better story",
                    style: GoogleFonts.robotoMono(
                      fontSize: 23,
                    )),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  // width: 480,
                  child: Text(
                      "Since beginning my journey as a freelance designer\nnearly 8 years ago, I've done remote work for\nagencies, consulted for startups, and collaborated\nwith talented people to create digital products\nfor both business and consumer use. I'm quietly\nconfident, 05_home_developer.jpg id perpetually\nworking on improving my chopsone design problem\nat a time.",
                      style: GoogleFonts.robotoMono(
                          fontSize: 14, color: const Color(0xff808184))),
                ),
              ],
            )
          ],
        ));
  }
}
