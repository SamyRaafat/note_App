import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:noteapp/presentation/Screen/create_new_note.dart';
import 'package:noteapp/presentation/Screen/home_page.dart';
import 'package:noteapp/presentation/Screen/login.dart';
import 'package:noteapp/presentation/Screen/sign_up_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
