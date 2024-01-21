import 'package:flutter/material.dart';
import 'package:portfolio/pages/page1.dart';
import 'package:portfolio/pages/page2.dart';
import 'package:portfolio/pages/page3.dart';
import 'package:portfolio/pages/page4.dart';

class BackgroundPage extends StatefulWidget {
  const BackgroundPage({super.key});

  @override
  State<BackgroundPage> createState() => _BackgroundStatePage();
}

class _BackgroundStatePage extends State<BackgroundPage> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    // return const Scaffold(
    //   body: SingleChildScrollView(
    //     scrollDirection: Axis.vertical,
    //     child: Column(
    //       children: [Page1(), Page2(), Page3(), Page4()],
    //     ),
    //   ),
    // );
    return Scaffold(
      body: ListView(
        addAutomaticKeepAlives: true,
        controller: _controller,
        children: [
          Page1(
            service: () {
              _controller.position.animateTo(0.0,
                  duration: const Duration(seconds: 1), curve: Curves.easeIn);
            },
            notes: () {
              double position = _controller.position.extentTotal / 4;
              _controller.position.animateTo(position,
                  duration: const Duration(seconds: 1), curve: Curves.easeIn);
            },
            work: () {
              double position = _controller.position.extentTotal / 2;
              _controller.position.animateTo(position,
                  duration: const Duration(seconds: 1), curve: Curves.easeIn);
            },
            contact: () {
              double endPosition = _controller.position.extentTotal;
              _controller.position.animateTo(endPosition,
                  duration: const Duration(seconds: 2), curve: Curves.easeIn);
            },
          ),
          const Page2(),
          const Page3(),
          Page4(
            home: () {
              _controller.position.animateTo(0.0,
                  duration: const Duration(seconds: 2), curve: Curves.easeIn);
            },
            about: () {
              double position = _controller.position.extentTotal / 4;
              _controller.position.animateTo(position,
                  duration: const Duration(seconds: 1), curve: Curves.easeIn);
            },
            work: () {
              double position = _controller.position.extentTotal / 2;
              _controller.position.animateTo(position,
                  duration: const Duration(seconds: 1), curve: Curves.easeIn);
            },
            contact: () {
              double endPosition = _controller.position.extentTotal;
              _controller.position.animateTo(endPosition,
                  duration: const Duration(seconds: 2), curve: Curves.easeIn);
            },
          )
        ],
      ),
    );
  }
}
