import 'package:flutter/material.dart';

class ColorsThemes{
  static dynamic theme(context) {
    final themeType = Theme.of(context).brightness.toString().toLowerCase(); // 获取当前主题

    var lightTheme = {
      'demoBY': Colors.blue,
      'demoRG':Colors.red
    };

    var dartTheme = {
      'demoBY': Colors.yellow,
      'demoRG':Colors.green
    };

    if (themeType == 'brightness.dark') {
      // brightness.dark 暗黑主题
      return dartTheme;
    } else {
      // brightness.light 亮色主题
      return lightTheme;
    }
  }
}