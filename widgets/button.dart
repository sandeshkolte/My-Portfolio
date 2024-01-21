import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  NeuButton(
      {super.key,
      this.height,
      this.width,
      required this.blurRadius,
      required this.distance,
      required this.text,
      this.fontSize,
      this.color,
      this.onTap});
  double? height = 55;
  double? width = 100;
  Offset distance = const Offset(5, 5);
  double blurRadius = 20;
  double? fontSize = 55;
  String text;
  VoidCallback? onTap;
  Color? color = Colors.grey.shade800;

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: -widget.distance,
                blurRadius: widget.blurRadius,
              ),
              BoxShadow(
                color: Colors.grey.shade500,
                offset: widget.distance,
                blurRadius: widget.blurRadius,
              )
            ]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
            child: Text(
              widget.text,
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.color,
                fontSize: widget.fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
