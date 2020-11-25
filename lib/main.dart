import 'package:flutter/material.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './routes.dart';

import 'package:flutter_template/models/globalModeProvider.dart';
import 'package:flutter_template/layout/basicLayout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 在 runApp 之前若需要初始化插件，则需要此行代码
  await SpUtil.getInstance(); // 初始化 SpUtil (由于 SharedPreferences 需要异步生成才能使用。)
  debugPaintSizeEnabled = !true;
  runApp(
    // 全局注册 model
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: GlobalModeProvider()),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalModeProvider>(
        builder: (context, globalModeProvider, _) {
      return MaterialApp(
        title: 'Flutter template',
        // initialRoute: RouteConfig.initRouteName, // 初始路由
        onGenerateRoute: RouteConfig.onGenerateRoute,  // 路由配置
        theme: globalModeProvider.themeValue,
        darkTheme: globalModeProvider.dartThemeValue,
        // 默认
        locale: globalModeProvider.localeValue,
        // locale:  Locale('zh','HK'),
        // 设置语言
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate, // 指定本地化的字符串和一些其他的值
          GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
          GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到左
        ],
        // 讲en设置为第一项,没有适配语言时,英语为首选项
        supportedLocales: [
          const Locale('en', ''),
          const Locale('zh', 'CN'),
          ...S.delegate.supportedLocales
        ],
        // // 插件目前不完善手动处理简繁体
        localeResolutionCallback: (locale, supportLocales) {
          print('当前系统语言环境$locale');
          // 中文 简繁体处理
          // if (locale?.languageCode == 'zh') {
          //   if (locale?.scriptCode == 'Hant') {
          //     return const Locale('zh', 'HK'); //繁体
          //   } else {
          //     return const Locale('zh', 'CN'); //简体
          //   }
          // }
          return null;
        },
        home: BasicLayout(),
      );
    });
  }
}
