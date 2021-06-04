import 'package:adahi_application/screens/welcome_screen/welcome_screen.dart';
import 'package:adahi_application/shared/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adaحi',
      theme: ThemeData(
        primarySwatch: kDefaultColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
