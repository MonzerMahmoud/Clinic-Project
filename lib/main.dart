import 'package:clinic_project/constants.dart';
import 'package:clinic_project/view/form.dart';
import 'package:clinic_project/view/patients_status_page.dart';
import 'package:clinic_project/view/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme:ThemeData(primarySwatch: Colors.teal),
      home : Scaffold(
        body: SplashScreen(),
      )

    );
  }
}


