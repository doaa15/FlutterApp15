import 'package:first_apps/modules/calculator/bmi_calculator_app.dart';
import 'package:first_apps/modules/project/Congratulations.dart';
import 'package:first_apps/modules/project/Verification.dart';
import 'package:first_apps/modules/project/forgot.dart';
import 'package:first_apps/modules/project/login.dart';
import 'package:first_apps/modules/project/logo1.dart';
import 'package:first_apps/modules/project/resent_password.dart';
import 'package:first_apps/modules/project/sign_up.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Logo1 ()

    );
  }
}
