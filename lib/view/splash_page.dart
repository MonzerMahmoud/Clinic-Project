import 'package:clinic_project/constants.dart';
import 'package:clinic_project/view/patients_status_page.dart';
import 'package:clinic_project/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => PatientsStatusPage()));
  }

  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child:  Center(
          child: Image.asset('images/IMG_6182 2.JPG')),
    );
  }
}
