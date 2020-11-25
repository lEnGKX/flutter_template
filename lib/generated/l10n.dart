// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Skip to the {page} page`
  String jumpDemoPage(Object page) {
    return Intl.message(
      'Skip to the $page page',
      name: 'jumpDemoPage',
      desc: '',
      args: [page],
    );
  }

  /// `Demo`
  String get Demo {
    return Intl.message(
      'Demo',
      name: 'Demo',
      desc: '',
      args: [],
    );
  }

  /// `My`
  String get My {
    return Intl.message(
      'My',
      name: 'My',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get Setting {
    return Intl.message(
      'Setting',
      name: 'Setting',
      desc: '',
      args: [],
    );
  }

  /// `multi-language`
  String get multiLanguage {
    return Intl.message(
      'multi-language',
      name: 'multiLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Follow the system`
  String get FollowSystem {
    return Intl.message(
      'Follow the system',
      name: 'FollowSystem',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get Theme {
    return Intl.message(
      'Theme',
      name: 'Theme',
      desc: '',
      args: [],
    );
  }

  /// `Light mode`
  String get LightMode {
    return Intl.message(
      'Light mode',
      name: 'LightMode',
      desc: '',
      args: [],
    );
  }

  /// `Dark mode`
  String get DarkMode {
    return Intl.message(
      'Dark mode',
      name: 'DarkMode',
      desc: '',
      args: [],
    );
  }

  /// `mock request`
  String get mockRequest {
    return Intl.message(
      'mock request',
      name: 'mockRequest',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'HK'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}