// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fizmat_app/screens/birthday/birthday.dart';
import 'package:fizmat_app/screens/home/home.dart';
import 'package:fizmat_app/screens/profile/profile.dart';
import 'package:fizmat_app/screens/timetb/timetb.dart';
import 'package:flutter/material.dart';

class FizNavBar extends StatefulWidget {
  @override
  _FizNavBarState createState() => _FizNavBarState();
}

class _FizNavBarState extends State<FizNavBar> {
  int _pageIndex = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).colorScheme.background;
    final appBarColor = Theme.of(context).appBarTheme.backgroundColor!;
    //我不知道为什么“!”

    return Scaffold(
      body: PageView(
        physics: ScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        children: [
          FizHome(),
          FizTimetb(),
          FizBirthday(),
          FizProfile(),
        ],
      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: backgroundColor,
        color: appBarColor,
        animationDuration: Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        },
        items: [
          Icon(Icons.home),
          Icon(Icons.list),
          Icon(Icons.cake),
          Icon(Icons.person),
        ],
      ),
    );
  }
}