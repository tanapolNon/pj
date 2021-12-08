import 'package:flutter/material.dart';
//import 'package:flutter_application_1/screen/mainpage.dart';
//import 'package:flutter_application_1/screen/mainpage.dart';
import 'package:flutter_application_1/screen/tabbar.dart';
//import 'package:flutter_application_1/screen/postcategorise.dart';
//import 'package:flutter_application_1/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

// สร้าง widgetเอง
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Tabbar(),
    );
  }
}
