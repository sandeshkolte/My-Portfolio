// import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

// class IconAnimation extends StatefulWidget {
//   const IconAnimation({super.key});

//   @override
//   State<IconAnimation> createState() => _IconAnimationState();
// }

// class _IconAnimationState extends State<IconAnimation>
//     with TickerProviderStateMixin {
//   late AnimationController _controller;
//   bool isClicked = false;
//   Offset distance = const Offset(5, 5);
//   double blurRadius = 10;

//   @override
//   void initState() {
//     _controller = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 500));
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: Center(
//         child: GestureDetector(
//           onTap: () {
//             if (isClicked) {
//               _controller.reverse();
//             } else {
//               _controller.forward();
//             }
//             isClicked = !isClicked;
//           },
//           child: Container(
//             padding: const EdgeInsets.all(50),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: Colors.grey[100],
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.white,
//                       offset: -distance,
//                       blurRadius: blurRadius,
//                       inset: true),
//                   BoxShadow(
//                       color: Colors.grey.shade400,
//                       offset: distance,
//                       blurRadius: 1,
//                       inset: true)
//                 ]),
//             child: AnimatedIcon(
//               icon: AnimatedIcons.pause_play,
//               progress: _controller,
//               color: Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
