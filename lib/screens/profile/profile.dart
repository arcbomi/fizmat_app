// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:fizmat_app/models/studentInfo.dart';
import 'package:fizmat_app/screens/profile/localWidgets/avatar.dart';
import 'package:fizmat_app/screens/profile/localWidgets/button.dart';
import 'package:fizmat_app/screens/profile/localWidgets/number.dart';
import 'package:fizmat_app/unitls/fizStudent.dart';
import 'package:fizmat_app/widgets/fizNavbar.dart';
import 'package:flutter/material.dart';

class FizProfile extends StatelessWidget {
  const FizProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final student = FizCurrentStudent.getCurrentStudent;
    return Scaffold(
        body: Stack(children: [
          FizHeadText(
            top: 50,
            text: "Profile",
            fontSize: 50,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 120),
                FizAvatar(
                  imagePath: student.imagePath,
                  onClicked: () {},
                ),
                SizedBox(height: 20),
                FizBuildName(student),
                SizedBox(height: 20),
                NumbersWidget(),
                SizedBox(height: 20),
                FizLogoutButton(
                  text: "Logout from kundelik",
                  onClicked: () {},
                  icon: Icons.exit_to_app,
                ),
                SizedBox(height: 20),
                FizLogoutButton(
                  text: "Logout from app",
                  onClicked: () {},
                  icon: Icons.exit_to_app,
                ),
              ],
            ),
          ),
        ]));
  }
}

Widget FizBuildName(FizStudent student) => Column(
      children: [
        Text(
          student.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(
          student.email,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );

Widget FizHeadText({double? top, required String text, double? fontSize}) => 
    Positioned(
      top: top,
      right: 0,
      left: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ],
      ),
    );
