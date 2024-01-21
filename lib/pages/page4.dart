import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page4 extends StatelessWidget {
   const Page4({super.key, this.home, this.about, this.work, this.contact});
  final void Function()? home, about, work, contact;

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isHovering = ValueNotifier(false);
    ValueNotifier<bool> isHovering1 = ValueNotifier(false);
    ValueNotifier<bool> isHovering2 = ValueNotifier(false);
    ValueNotifier<bool> isHovering3 = ValueNotifier(false);
    ValueNotifier<bool> isHovering4 = ValueNotifier(false);
    return Container(
      height: 730,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 34, 35, 39)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Let's make something amazing\ntogether .",
                      style: GoogleFonts.robotoMono(fontSize: 35)),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Text("Start by ",
                          style: GoogleFonts.robotoMono(fontSize: 35)),
                      ValueListenableBuilder(
                          valueListenable: isHovering,
                          builder: (context, value, child) => InkWell(
                                onTap: () {},
                                onHover: (val) {
                                  isHovering.value = val;
                                },
                                child: Text("saying hi",
                                    style: GoogleFonts.robotoMono(
                                        color: isHovering.value
                                            ? const Color(0xff66edab)
                                            : Colors.white,
                                        decoration: TextDecoration.underline,
                                        fontSize: 35)),
                              )),
                    ],
                  ),
                  const SizedBox(
                    height: 220,
                  ),
                  SizedBox(
                    width: 415,
                    child: Row(
                      children: [
                        const Text(
                          "Sandesh",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        const Text(
                          " Kolte",
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          "2024. All Rights Reserved",
                          style: GoogleFonts.robotoMono(
                              fontSize: 13, color: const Color(0xff808184)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Information",
                    style: GoogleFonts.robotoMono(
                        fontSize: 13, color: const Color(0xff808184)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Gadchiroli, Maharashtra, India",
                    style: GoogleFonts.robotoMono(
                        fontSize: 16, color: const Color(0xff808184)),
                  ),
                  Text("sandeshkolte11@gmail.com",
                      style: GoogleFonts.robotoMono(fontSize: 35)),
                  const SizedBox(
                    height: 50,
                  ),
                  ValueListenableBuilder(
                      valueListenable: isHovering1,
                      builder: (context, value, child) => InkWell(
                          onHover: (val) {
                            isHovering1.value = val;
                          },
                          onTap: home,
                          child: Text(
                            "Home",
                            style: GoogleFonts.robotoMono(
                              fontSize: 13,
                              color: isHovering1.value
                                  ? const Color(0xff66edab)
                                  : Colors.white,
                            ),
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  ValueListenableBuilder(
                      valueListenable: isHovering2,
                      builder: (context, value, child) => InkWell(
                          onHover: (val) {
                            isHovering2.value = val;
                          },
                          onTap: contact,
                          child: Text(
                            "About me",
                            style: GoogleFonts.robotoMono(
                              fontSize: 13,
                              color: isHovering2.value
                                  ? const Color(0xff66edab)
                                  : Colors.white,
                            ),
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  ValueListenableBuilder(
                      valueListenable: isHovering3,
                      builder: (context, value, child) => InkWell(
                          onHover: (val) {
                            isHovering3.value = val;
                          },
                          onTap: work,
                          child: Text(
                            "Works",
                            style: GoogleFonts.robotoMono(
                              fontSize: 13,
                              color: isHovering3.value
                                  ? const Color(0xff66edab)
                                  : Colors.white,
                            ),
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  ValueListenableBuilder(
                      valueListenable: isHovering4,
                      builder: (context, value, child) => InkWell(
                          onHover: (val) {
                            isHovering4.value = val;
                          },
                          onTap: contact,
                          child: Text(
                            "Contact",
                            style: GoogleFonts.robotoMono(
                              fontSize: 13,
                              color: isHovering4.value
                                  ? const Color(0xff66edab)
                                  : Colors.white,
                            ),
                          ))),
                  const SizedBox(
                    height: 110,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: const Image(
                          height: 16,
                          image: AssetImage(
                            "linkedin.jpeg",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: const Image(
                          height: 18,
                          image: AssetImage(
                            "githubn.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: const Image(
                          height: 18,
                          image: AssetImage(
                            "fb_logo.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: const Image(
                          height: 18,
                          image: AssetImage(
                            "insta_logo.png",
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
