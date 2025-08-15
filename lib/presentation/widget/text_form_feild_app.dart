import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';

class TextFormFieldApp extends StatefulWidget {
  String nameTFF;
  String hinTxt;
  TextEditingController controller;
  TextFormFieldApp({
    super.key,
    required this.controller,
    required this.hinTxt,
    required this.nameTFF,
  });

  @override
  State<TextFormFieldApp> createState() => _TextFormFieldAppState();
}

class _TextFormFieldAppState extends State<TextFormFieldApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          widget.nameTFF,
          style: TextStyle(
            color: ColorManager.WhiteApp,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 16),
        ClipRRect(
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
        ),
      ],
    );
  }
}
