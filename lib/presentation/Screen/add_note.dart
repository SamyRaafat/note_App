import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';
import 'package:noteapp/presentation/widget/page_name.dart';
import 'package:noteapp/presentation/widget/text_form_feild_app.dart';

class AddNote extends StatelessWidget {
  AddNote({super.key});
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGApp,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
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
            SizedBox(height: 20),
            Container(
              width: 390,
              height: 80,
              color: Color.fromRGBO(242, 214, 241, 0.08),
            ),
          ],
        ),
      ),
    );
  }
}
