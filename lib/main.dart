import 'package:bmi_project/widgets/screen/homescreen.dart';
import 'package:bmi_project/widgets/shap_left.dart';
import 'package:bmi_project/widgets/shap_right.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
    );
  }
}
