import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isHovering = ValueNotifier(false);

    return Container(
      height: 1200,
      decoration: const BoxDecoration(color: Color(0xff25262A)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Latest Works",
                      style: GoogleFonts.robotoMono(fontSize: 40)),
                  Text(
                    "Perfect solutions for digital experience",
                    style: GoogleFonts.robotoMono(
                        fontSize: 14, color: const Color(0xff808184)),
                  ),
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "vibes_app.png",
                  height: 500,
                ),
              ),
              const SizedBox(
                height: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ValueListenableBuilder(
                      valueListenable: isHovering,
                      builder: (context, value, child) => InkWell(
                            onHover: (val) {
                              isHovering.value = val;
                            },
                            onTap: () async {
                              await launchUrl(
                                  Uri.parse("https://github.com/sandeshkolte"),
                                  mode: LaunchMode.platformDefault);
                            },
                            child: Text(
                              "ALL PROJECTS",
                              style: GoogleFonts.robotoMono(
                                  color: isHovering.value
                                      ? const Color(0xff66edab)
                                      : Colors.white,
                                  fontSize: 24,
                                  decoration: TextDecoration.underline),
                            ),
                          )),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                      "* Some projects are not posted here\n  click above to view all projects",
                      style: GoogleFonts.robotoMono(
                          fontSize: 13, color: const Color(0xff808184))),
                ],
              )
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () async {
                  await launchUrl(
                      Uri.parse(
                          "https://github.com/sandeshkolte/Gemini-AI-chat-bot-app"),
                      mode: LaunchMode.platformDefault);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "gemini_site.png",
                    height: 500,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "chat_app.png",
                  height: 500,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
