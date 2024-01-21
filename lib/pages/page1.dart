import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion/motion.dart';
import 'package:portfolio/widgets/image_button.dart';
import 'package:url_launcher/url_launcher.dart';

class Page1 extends StatefulWidget {
  Page1({super.key, this.service, this.work, this.notes, this.contact});
  final void Function()? service, work, notes, contact;

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 2))
        ..repeat(reverse: true);

  // late final Animation<Offset> _animation = Tween<Offset>(
  //         begin: Offset.zero, end: const Offset(0, 0.2))
  //     .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isHovering = ValueNotifier(false);
    ValueNotifier<bool> isHovering1 = ValueNotifier(false);
    ValueNotifier<bool> isHovering2 = ValueNotifier(false);
    ValueNotifier<bool> isHovering3 = ValueNotifier(false);
    ValueNotifier<bool> isHovering4 = ValueNotifier(false);

    return Stack(children: [
      Container(
        height: 760,
        decoration: const BoxDecoration(color: Color(0xff2d2e32)),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 80.0, vertical: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
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
                        width: 120,
                      ),
                      ValueListenableBuilder(
                          valueListenable: isHovering1,
                          builder: (context, value, child) => InkWell(
                              onHover: (val) {
                                isHovering1.value = val;
                              },
                              onTap: widget.service,
                              child: Text(
                                "Home",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 14,
                                  color: isHovering1.value
                                      ? const Color(0xff66edab)
                                      : Colors.white,
                                ),
                              ))),
                      const SizedBox(
                        width: 40,
                      ),
                      ValueListenableBuilder(
                          valueListenable: isHovering2,
                          builder: (context, value, child) => InkWell(
                              onHover: (val) {
                                isHovering2.value = val;
                              },
                              onTap: widget.notes,
                              child: Text(
                                "About me",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 14,
                                  color: isHovering2.value
                                      ? const Color(0xff66edab)
                                      : Colors.white,
                                ),
                              ))),
                      const SizedBox(
                        width: 40,
                      ),
                      ValueListenableBuilder(
                          valueListenable: isHovering3,
                          builder: (context, value, child) => InkWell(
                              onHover: (val) {
                                isHovering3.value = val;
                              },
                              onTap: widget.work,
                              child: Text(
                                "Work",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 14,
                                  color: isHovering3.value
                                      ? const Color(0xff66edab)
                                      : Colors.white,
                                ),
                              ))),
                      const SizedBox(
                        width: 40,
                      ),
                      ValueListenableBuilder(
                          valueListenable: isHovering4,
                          builder: (context, value, child) => InkWell(
                              onHover: (val) {
                                isHovering4.value = val;
                              },
                              onTap: widget.contact,
                              child: Text(
                                "Contacts",
                                style: GoogleFonts.robotoMono(
                                  fontSize: 14,
                                  color: isHovering4.value
                                      ? const Color(0xff66edab)
                                      : Colors.white,
                                ),
                              ))),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          await launchUrl(
                              Uri.parse(
                                  "https://www.linkedin.com/in/sandesh-kolte/"),
                              mode: LaunchMode.platformDefault);
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: const Image(
                                height: 15,
                                image: AssetImage(
                                  "linkedin.jpeg",
                                ),
                              ),
                            ),
                            Text(
                              " Linked in",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 13, color: const Color(0xff808184)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () async {
                          await launchUrl(
                              Uri.parse("https://github.com/sandeshkolte"),
                              mode: LaunchMode.platformDefault);
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: const Image(
                                height: 18,
                                image: AssetImage(
                                  "githubn.png",
                                ),
                              ),
                            ),
                            Text(
                              " Github",
                              style: GoogleFonts.robotoMono(
                                  fontSize: 13, color: const Color(0xff808184)),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      ValueListenableBuilder(
                          valueListenable: isHovering,
                          builder: (context, value, child) => TextButton(
                              onFocusChange: (val) {
                                isHovering.value = false;
                              },
                              style: ButtonStyle(
                                // overlayColor: MaterialStatePropertyAll(
                                //   isHovering.value ? Colors.green : Colors.grey,
                                // ),
                                iconColor: MaterialStatePropertyAll(
                                  isHovering.value ? Colors.green : Colors.grey,
                                ),
                                shape: const MaterialStatePropertyAll(
                                  CircleBorder(
                                    side: BorderSide.none,
                                  ),
                                ),
                              ),
                              onHover: (val) {
                                isHovering.value = val;
                              },
                              onPressed: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.mail_outline_rounded),
                              )))
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Color(0xff66edab)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text("Flutter Developer",
                            style: GoogleFonts.robotoMono(
                                color: Colors.black, fontSize: 12)),
                      ),
                    ).animate().fadeIn(
                        duration: const Duration(seconds: 2),
                        delay: const Duration(milliseconds: 600)),
                    Text("Talk is cheap.",
                            style: GoogleFonts.robotoMono(
                                wordSpacing: 8, fontSize: 47))
                        .animate()
                        .fadeIn(
                            duration: const Duration(seconds: 2),
                            delay: const Duration(milliseconds: 700)),
                    Text("Show me the code",
                            style: GoogleFonts.robotoMono(
                                wordSpacing: 8, fontSize: 47))
                        .animate()
                        .fadeIn(
                            duration: const Duration(seconds: 2),
                            delay: const Duration(milliseconds: 700)),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("I design and code beatifully simple things\nand I love what I do",
                            style: GoogleFonts.robotoMono(
                                color: const Color(0xff808184)))
                        .animate()
                        .fadeIn(
                            duration: const Duration(seconds: 2),
                            delay: const Duration(milliseconds: 800)),
                    const SizedBox(
                      height: 80,
                    ),
                    ValueListenableBuilder(
                      valueListenable: isHovering,
                      builder: (context, value, child) => InkWell(
                        onTap: () {},
                        onHover: (val) {
                          isHovering.value = val;
                        },
                        child: Text(
                          "LET'S CHAT!",
                          style: GoogleFonts.robotoMono(
                              color: isHovering.value
                                  ? const Color(0xff66edab)
                                  : Colors.white,
                              fontSize: 18,
                              decoration: TextDecoration.underline),
                        ).animate().fadeIn(
                            duration: const Duration(seconds: 2),
                            delay: const Duration(milliseconds: 900)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color(0xff28292b),
                        Color.fromARGB(21, 32, 32, 34),
                      ])),
                  height: 520,
                  width: 520,
                  child: const SizedBox(),
                )
              ],
            ),
          ],
        ),
      ),
      Positioned(
          bottom: 0,
          right: 280,
          child: Image.asset(
            "sandeshn.png",
            width: 450,
            height: 550,
            filterQuality: FilterQuality.high,
          )),
      Positioned(
          bottom: 50,
          right: 200,
          child: Motion.elevated(
            borderRadius: BorderRadius.circular(100),
            elevation: 100,
            glare: true,
            shadow: true,
            child: NeuImage(
              height: 180,
              width: 180,
              image: const AssetImage("flutter.png"),
              // blurRadius: 20,
              // distance: const Offset(0, 0),
            ),
          )),
      Positioned(
          bottom: 130,
          right: 650,
          child: Motion.elevated(
            borderRadius: BorderRadius.circular(100),
            elevation: 100,
            glare: true,
            shadow: true,
            child: NeuImage(
              height: 145,
              width: 145,
              image: const AssetImage("studio.png"),
              // blurRadius: 20,
              // distance: const Offset(-10, 10),
            ),
          )),
      Positioned(
          bottom: 380,
          right: 230,
          child: Motion.elevated(
            borderRadius: BorderRadius.circular(100),
            elevation: 100,
            glare: true,
            shadow: true,
            child: NeuImage(
              height: 80,
              width: 80,
              image: const AssetImage("firebase.png"),
              // blurRadius: 20,
              // distance: const Offset(-10, 10),
            ),
          )),
      Positioned(
          bottom: 500,
          right: 220,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xff25262A),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade900,
                    offset: const Offset(0, 0),
                    blurRadius: 5,
                  ),
                ]),
            child: const Center(child: SizedBox()),
          )),
    ]);
  }
}
