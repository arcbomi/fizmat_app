import 'package:fizmat_app/screens/birthday/birthday.dart';
import 'package:fizmat_app/screens/home/home.dart';
import 'package:fizmat_app/screens/login/login.dart';
import 'package:fizmat_app/screens/profile/profile.dart';
import 'package:fizmat_app/screens/timetb/timetb.dart';
import 'package:fizmat_app/unitls/fizTheme.dart';
import 'package:fizmat_app/widgets/fizNavbar.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FizTheme().buildTheme(),
      home: FizNavBar(),
    );
  }
}


