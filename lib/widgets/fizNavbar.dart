// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class FizNavBar extends StatefulWidget {
  const FizNavBar({super.key});

  @override
  State<FizNavBar> createState() => _FizNavBarState();
}

class _FizNavBarState extends State<FizNavBar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      color: Theme.of(context).appBarTheme.backgroundColor!,
      items: [
        Icon(Icons.home),
        Icon(Icons.list),
        Icon(Icons.cake),
        Icon(Icons.person),
      ],
    );
  }
}
