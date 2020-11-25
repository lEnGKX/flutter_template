import 'package:flutter/material.dart';
import 'package:flustars/flustars.dart';

import 'package:flutter_template/themes/themes.dart';

class GlobalModeProvider with ChangeNotifier {
  // 主题 0:浅色  1: 深色 2: 随系统
  int _themeMode = SpUtil.getInt("themeMode", defValue: 2); // defValue 默认值

  int get themeMode => _themeMode;

  ThemeData get themeValue => themeMode == 2
      ? Themes.lightTheme()
      : themeMode == 1 ? Themes.dartTheme() : Themes.lightTheme(); // 是否是随系统？是的就是明亮，不是，则按照手动选择主题展示
  ThemeData get dartThemeValue => themeMode == 2 ? Themes.dartTheme() : null; // 是否是随系统？是的就是暗黑，不是，为空

  // 语言
  dynamic _languageMode = SpUtil.getString("languageMode", defValue: null); // null 为跟随系统
  String get languageMode => _languageMode;
  Locale get localeValue => _languageMode == null ? null: Locale(_languageMode.split('_')[0], _languageMode.split('_')[1]);

  // 更改主题
  void changeThemeMode(int themeMode) async {
    _themeMode = themeMode;
    // print('当前主题$_darkMode');

    notifyListeners(); // `notifyListeners();` 用于通知顶层容器状态的变化
    SpUtil.putInt('themeMode', themeMode); // 用于保存用户设置。
  }

  // 更改语言
  void changeLanguageMode(String languageMode) async {
    _languageMode = languageMode;
    // print('当前语言 $languageMode');

    notifyListeners();
    SpUtil.putString('languageMode', languageMode);
  }

}
