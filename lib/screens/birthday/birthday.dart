import 'package:fizmat_app/widgets/fizNavbar.dart';
import 'package:flutter/material.dart';

class FizBirthday extends StatelessWidget {
  const FizBirthday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("birthday page"),
          ],
        ),
      ),
    );
  }
}
