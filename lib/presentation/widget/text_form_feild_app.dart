import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';

class TextFormFeildApp extends StatefulWidget {
  String hinTxt;
  TextEditingController controller;
  TextFormFeildApp({super.key, required this.controller, required this.hinTxt});

  @override
  State<TextFormFeildApp> createState() => _TextFormFeildAppState();
}

class _TextFormFeildAppState extends State<TextFormFeildApp> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          fillColor: ColorManager.boxtextform,
          filled: true,
          border: InputBorder.none,
          hintText: widget.hinTxt,
        ),
      ),
    );
  }
}
