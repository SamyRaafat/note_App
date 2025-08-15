import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';
import 'package:noteapp/presentation/widget/page_name.dart';
import 'package:noteapp/presentation/widget/text_form_feild_app.dart';

class CreateNewNote extends StatelessWidget {
  TextEditingController headLineControler = TextEditingController();
  TextEditingController DescriptionControler = TextEditingController();
  CreateNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGApp,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          children: [
            PageName(pageNameScreen: TextApp.pageNamecreateNewNote),
            TextFormFieldApp(
              controller: headLineControler,
              hinTxt: TextApp.hitTextEnterNoteAddress,
              nameTFF: TextApp.headline,
            ),
            TextFormFieldApp(
              controller: DescriptionControler,
              hinTxt: TextApp.hitTextEnterYourDescription,
              nameTFF: TextApp.Description,
            ),
          ],
        ),
      ),
    );
  }
}
