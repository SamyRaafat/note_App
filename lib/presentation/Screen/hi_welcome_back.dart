import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';
import 'package:noteapp/presentation/widget/page_name.dart';
import 'package:noteapp/presentation/widget/text_form_feild_app.dart';

class HiWelcomeBack extends StatelessWidget {
  const HiWelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.backGApp,
        body: Column(
          children: [
            SizedBox(height: 16),
            PageName(pageNameScreen: TextApp.pageNamehiWelcomeBack),
          ],
        ),
      ),
    );
  }
}
