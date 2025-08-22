import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';
import 'package:noteapp/presentation/widget/custom_botton_widget.dart';
import 'package:noteapp/presentation/widget/page_name.dart';
import 'package:noteapp/presentation/widget/text_form_feild_app.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.backGApp,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// page name screen
              PageName(pageNameScreen: TextApp.pageNameCreateNewAccount),

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
                      TextApp.navNameSignUp,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
