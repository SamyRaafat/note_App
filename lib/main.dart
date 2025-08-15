import 'package:flutter/material.dart';
import 'package:noteapp/presentation/Screen/create_new_note.dart';
import 'package:noteapp/presentation/Screen/hi_welcome_back.dart';
import 'package:noteapp/presentation/Screen/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateNewNote(),
    );
  }
}
