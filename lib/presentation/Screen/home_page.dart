import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';
import 'package:noteapp/presentation/widget/page_name.dart';
import 'package:noteapp/presentation/widget/sampel_note.dart';
import 'package:noteapp/presentation/widget/text_form_feild_app.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGApp,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 130,
                      height: 48,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Center(
                        child: Text(
                          TextApp.navNameAddNote,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Center(
                    child: Container(
                      width: 130,
                      height: 48,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Center(
                        child: Text(
                          TextApp.navNameLogout,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              SampelNote(
                noteName: "Meeting",
                noteDetails: "Excepteur sint occaecat  non proiden.",
                timeAddNote: "9.00 am",
              ),
              SampelNote(
                noteName: "Buying Fruits",
                noteDetails: "Apple,Orange,Banana,Guava.",
                timeAddNote: "11.00 am",
              ),
              SampelNote(
                noteName: "Address",
                noteDetails: "4140 Parker Rd.  New Mexico 31134",
                timeAddNote: "11.30 am",
              ),
              SampelNote(
                noteName: "Packing",
                noteDetails: "Dress,Shoe,Watch,Toothbresh,Paste.",
                timeAddNote: "1.00 pm",
              ),
              SampelNote(
                noteName: "Health checkup",
                noteDetails: "Duis aute irure dolor in  in voluptate.",
                timeAddNote: "4.00 pm",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
