import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_template/pages/home/index.dart';
import 'package:flutter_template/pages/my/index.dart';
import 'package:flutter_template/pages/demo/index.dart';
import 'package:flutter_template/pages/setting/index.dart';

class RouteConfig {
  static final initRouteName = '/setting'; // 默认路由

  static final Map<String, WidgetBuilder> router = {
//    '/basicLayout': (BuildContext context) => BasicLayout(), // 不带参路由
//    '/basicLayout':(BuildContext context,{arguments})=> BasicLayout(arguments:arguments), // 带参路由
    '/home': (BuildContext context) => Home(),
    '/my': (BuildContext context) => My(),
    '/demo':(BuildContext context) => Demo(),
    '/setting':(BuildContext context) => Setting(),
  };


  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // 统一处理路由
    final String name = settings.name;
    final Function pageContentBuilder = router[name];
    print('routeNameSettings ------ $settings');

    // 定义当前需要返回的 route 对象
    Route route;
    if (pageContentBuilder != null) {
      if (settings.arguments != null) {
        // 带参数的处理方式
        switch (name) {
          default:
            route = CupertinoPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            break;
        }
      } else {
        // 不带参数的处理方式
        switch (name) {
          case '/signUp':
            route = CupertinoPageRoute(
                builder: (context) => pageContentBuilder(context),
                fullscreenDialog:
                true // fullscreenDialog表示新的路由页面是否是一个全屏的模态对话框，在iOS中，如果fullscreenDialog为true，新页面将会从屏幕底部滑入（而不是水平方向）。
            );
            break;
          default:
          //这里调用自定义页面切换为淡入淡出
          //   route = FadeAnimation(pageContentBuilder);
            route = CupertinoPageRoute(
                builder: (context) => pageContentBuilder(context));
            break;
            break;
        }
      }
    }
    return route;
  }
}