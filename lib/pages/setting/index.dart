import 'package:flutter/material.dart';
import 'package:flutter_template/models/globalModeProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_template/generated/l10n.dart';


class Setting extends StatefulWidget {
  @override
  _Setting createState() => new _Setting();
}

class _Setting extends State<Setting> {
  // 更改 语言
  void _changeLanguage(context, value) async {
    Provider.of<GlobalModeProvider>(context, listen: false)
        .changeLanguageMode(value);
  }

  // 更改 主题
  void _changeTheme(context, value) {
    Provider.of<GlobalModeProvider>(context, listen: false)
        .changeThemeMode(value);
  }

  // 渲染语言列表
  List<Widget> renderLangugeLists(context, langugeLists, _currentLanguge) {
    List<Widget> widgetLanguge = [];
    langugeLists.forEach((item) => {
          widgetLanguge.add(
            new Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(
                            color: Colors.black12,
                            width: 1,
                            style: BorderStyle.solid))),
                child: new FlatButton(
                  onPressed: () => _changeLanguage(context, item['value']),
                  child: new Container(
                    padding: EdgeInsets.only(left: 0, right: 0),
                    child: new Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(item['label']),
                        _currentLanguge == item['value']
                            ? new Icon(Icons.done)
                            : new Text('')
                      ],
                    ),
                  ),
                )),
          )
        });
    return widgetLanguge;
  }

// 渲染主题列表
  List<Widget> renderthemeLists(context, themeLists, _currentTheme) {
    List<Widget> widgetTheme = [];
    for (int i = 0; i < themeLists.length; i++) {
      widgetTheme.add(
        new Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Colors.black12,
                        width: 1,
                        style: BorderStyle.solid))),
            child: new FlatButton(
              onPressed: () => _changeTheme(context, themeLists[i]['value']),
              child: new Container(
                padding: EdgeInsets.only(left: 0, right: 0),
                child: new Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(themeLists[i]['label']),
                    _currentTheme == themeLists[i]['value']
                        ? new Icon(Icons.done)
                        : new Text('')
                  ],
                ),
              ),
            )),
      );
    }
    return widgetTheme;
  }

  @override
  Widget build(BuildContext context) {
    List langugeLists = [
      {'label': S.current.FollowSystem, 'value': null},
      {'label': 'English', 'value': 'en_US'},
      {'label': '简体中文', 'value': 'zh_CN'},
      {'label': '繁體中文', 'value': 'zh_HK'},
    ];
    List themeLists = [
      {'label': S.current.FollowSystem, 'value': 2},
      {'label': S.current.LightMode, 'value': 0},
      {'label': S.current.DarkMode, 'value': 1},
    ];

    // 仓库
    final _globalModeStore = Provider.of<GlobalModeProvider>(context);

    // 当前主题
    var _currentTheme = _globalModeStore.themeMode;

    // 当前语言
    var _currentLanguge = _globalModeStore.languageMode;

    final intls = S.of(context);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(intls.Setting),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new ExpansionTile(
              title: new Text(intls.multiLanguage),
              children:
                  renderLangugeLists(context, langugeLists, _currentLanguge),
            ),
            new ExpansionTile(
                title: new Text(intls.Theme),
                children: renderthemeLists(context, themeLists, _currentTheme))
          ],
        ),
      ),
    );
  }
}
