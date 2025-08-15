import 'package:flutter/material.dart';

class CustomBottonWidget extends StatelessWidget {
  final callback;
  final color;
  final whith;
  final heith;
  final text;
  final radius;
  CustomBottonWidget({
    super.key,
    this.radius = 5,
    this.whith = 312,
    this.heith = 48,
    this.color = const Color.fromRGBO(255, 255, 255, 1),
    this.callback = const {},
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: callback,
        child: Container(
          height: heith,
          width: whith,
          color: color,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
