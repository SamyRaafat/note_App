import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';
import 'package:noteapp/presentation/Screen/sign_up_screen.dart';
import 'package:noteapp/presentation/widget/page_name.dart';
import 'package:noteapp/presentation/widget/text_form_feild_app.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backGApp,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// page name screen
            PageName(pageNameScreen: TextApp.pageNamehiWelcomeBack),

            /// Text form field for Email
            TextFormFieldApp(
              controller: emailController,
              hinTxt: TextApp.hitTextGmail,
              nameTFF: TextApp.email,
            ),

            /// Text form field for Password
            TextFormFieldApp(
              controller: passController,
              hinTxt: TextApp.hitTextPassword,
              nameTFF: TextApp.pass,
            ),
            SizedBox(height: 15),
            Spacer(),
            Center(
              child: Container(
                width: 312,
                height: 48,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Text(
                    TextApp.navNameLogin,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Container(
                width: 312,
                height: 48,
                decoration: BoxDecoration(color: Colors.white),
                child: Center(
                  child: Text(
                    TextApp.navNameConWitGo,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  TextApp.endTextDonthaveanaccount,
                  style: TextStyle(color: ColorManager.WhiteApp),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text(
                    TextApp.endTextsinup,
                    style: TextStyle(color: ColorManager.WhiteApp),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
