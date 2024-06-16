// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fizmat_app/screens/login/localWidgets/loginForm.dart';
import 'package:fizmat_app/screens/login/localWidgets/typeWriter.dart';
import 'package:flutter/material.dart';

class FizLogin extends StatelessWidget {
  const FizLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Center(
                child: Text(
                  'Fizmat APP',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            FizTypeWriterScreen(texts: ['hello','dulat','FIZMAT','arcbomi'],),
            Text(
              'Fizmat is a forge, shaping raw talent into future scientists and innovators.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            FizLoginButton(),
            SizedBox(height: 20.0),
            FizAgreeTerms(),
          ],
        ),
      ),
    );
  }
}
