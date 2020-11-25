// 由于直接在 main.dart 配置 明亮/暗黑 样式会显得很乱，故提出来单独处理
import 'package:flutter/material.dart';

class Themes {
  //  明亮
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      // appBarTheme: AppBarTheme(
      //   color: Color.fromRGBO(229, 229, 229, 1),
      //   elevation: 0, //去掉Appbar底部阴影
      //   iconTheme: IconThemeData(
      //     color: Color(0xFF323232), //change your color here
      //   ),
      // ),
      // scaffoldBackgroundColor: Color.fromRGBO(229, 229, 229, 1),
    );
  }

  //  暗黑
  static ThemeData dartTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      // appBarTheme: AppBarTheme(
      //   color: Colors.black,
      //   elevation: 0, //去掉Appbar底部阴影
      //   iconTheme: IconThemeData(
      //     color: Color(0xFFFFFFFF), //change your color here
      //   ),
      // ),
      // scaffoldBackgroundColor: Colors.black,
    );
  }
}
