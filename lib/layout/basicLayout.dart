import 'package:flutter/material.dart';
import 'package:flutter_template/generated/l10n.dart';

import 'package:flutter_template/pages/home/index.dart';
import 'package:flutter_template/pages/my/index.dart';

// 这个页面是作为整个APP的最外层的容器，以Tab为基础控制每个item的显示与隐藏
class BasicLayout extends StatefulWidget {
  @override
  _BasicLayout createState() => new _BasicLayout();
}

class _BasicLayout extends State<BasicLayout> {
  // bottomNavigationBar 当前的 val 值
  int _selectedIndex = 0;

  // pages
  List<Widget> pages = [Home(),My()];

  // bottomNavigationBar 切换
  void _onTabChanged(value) {
    setState(() {
//      print('Tab -- $value');
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final intls = S.of(context);

    return new Scaffold(
    bottomNavigationBar:  new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Color.fromRGBO(214,211,205, 1),
        // selectedItemColor:Colors.red,
        // unselectedItemColor:  Colors.red,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap: (value) => {
          _onTabChanged(value)
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(title: Text(intls.Home), icon: Icon(Icons.radio_button_unchecked)),
          BottomNavigationBarItem(
              title: Text(intls.My), icon: Icon(Icons.details)),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}