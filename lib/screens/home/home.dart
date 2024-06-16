import 'package:fizmat_app/widgets/fizNavbar.dart';
import 'package:flutter/material.dart';

class FizHome extends StatelessWidget {
  const FizHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("home page"),
          ],
        ),
      ),
    );
  }
}
