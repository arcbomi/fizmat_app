import 'package:fizmat_app/screens/login/login.dart';
import 'package:fizmat_app/screens/profile/localWidgets/avatar.dart';
import 'package:fizmat_app/screens/profile/profile.dart';
import 'package:fizmat_app/unitls/fizTheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fizmat APP',
      debugShowCheckedModeBanner: false,
      theme: FizTheme().buildTheme(),
      home: FizProfile(),//FizProfile() <--- change it 
    );
  }
}