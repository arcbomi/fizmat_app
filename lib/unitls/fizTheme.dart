// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class FizTheme {
  static final Color _navyBlue = const Color(0xFF111C25); // 深蓝色
  static final Color _lightNavyBlue = const Color(0xFF1D2031); // 较浅的深蓝色
  Color _vibrantGreen =const Color(0xFF4CB050); //活力绿
  Color _darkCharcoal = const Color(0xFF302E2D);

  Color get get_vibrantGreen => _vibrantGreen;
  Color get get_darkCharcoal => _darkCharcoal;


  ThemeData buildTheme() {
    return ThemeData(
      fontFamily: 'Roboto',
      colorScheme: ColorScheme.dark(
        background: _navyBlue, // 背景颜色
        primary: Colors.white, // 主要颜色，用于文本颜色
        secondary: Colors.black, // 次级颜色，用于次级文本颜色
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _lightNavyBlue, // AppBar 背景颜色
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.white, // 按钮背景颜色
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: _navyBlue, // 底部导航栏背景颜色
        selectedItemColor: Colors.white, // 选中项的颜色
        unselectedItemColor: Colors.black, // 未选中项的颜色
      ),
    );
  }
}
