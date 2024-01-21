import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

class NeuImage extends StatefulWidget {
  NeuImage(
      {super.key,
      this.height,
      this.width,
      // required this.blurRadius,
      // required this.distance,
      this.fontSize,
      required this.image,
      this.onTap});
  double? height = 55;
  double? width = 100;
  // Offset distance = const Offset(10, 10);
  // double blurRadius = 20;
  double? fontSize = 55;

  VoidCallback? onTap;
  ImageProvider<Object> image;

  @override
  State<NeuImage> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuImage> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: widget.onTap,
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff25262A),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.shade900,
            //     offset: widget.distance,
            //     blurRadius: widget.blurRadius,
            //   ),
            //   // BoxShadow(
            //   //   // color: Colors.grey.shade900,
            //   //   offset: widget.distance,
            //   //   blurRadius: widget.blurRadius,
            //   // )
            // ]
          ),
          child: Center(
            child: Image(
              image: widget.image,
            ),
          ),
        ));
  }
}
