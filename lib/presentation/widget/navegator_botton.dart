import 'package:flutter/material.dart';

class NavegatorBoton extends StatefulWidget {
  double? width;
  double height;
  String navNaSiUp;

  NavegatorBoton({
    super.key,
    required this.navNaSiUp,
    required this.height,
    this.width,
  });

  @override
  State<NavegatorBoton> createState() => _NavegatorBotonState();
}

class _NavegatorBotonState extends State<NavegatorBoton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Center(
          child: Stack(
            children: [
              Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Text(widget.navNaSiUp),
            ],
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
