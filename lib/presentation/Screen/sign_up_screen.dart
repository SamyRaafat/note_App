import 'package:flutter/material.dart';
import 'package:noteapp/core/const/TextApp.dart';
import 'package:noteapp/core/theme/colorManiger.dart';
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
              Center(
                child: Text(
                  TextApp.CreateNewAccount,
                  style: TextStyle(
                    color: ColorManager.WhiteApp,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                textAlign: TextAlign.start,
                TextApp.email,
                style: TextStyle(
                  color: ColorManager.WhiteApp,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 15),

              /// Text form feild for Email
              TextFormFeildApp(
                controller: passController,
                hinTxt: TextApp.email,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
