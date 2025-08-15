import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';

class PageName extends StatefulWidget {
  String pageNameScreen;
  PageName({super.key, required this.pageNameScreen});

  @override
  State<PageName> createState() => _PageNameState();
}

class _PageNameState extends State<PageName> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Center(
          child: Text(
            widget.pageNameScreen,
            style: TextStyle(
              color: ColorManager.WhiteApp,
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ),
      ],
    );
  }
}
