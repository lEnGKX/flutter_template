import 'package:flutter/material.dart';
import 'package:flutter_template/generated/l10n.dart';

import 'package:flutter_template/themes/colorsThemes.dart';

class Demo extends StatefulWidget {
  @override
  _Demo createState() => new _Demo();
}

class _Demo extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    final gW = MediaQuery.of(context).size.width;
    final colors = ColorsThemes.theme(context);
    final intls = S.of(context);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(intls.Demo),
      ),
      body: new Container(
        padding: EdgeInsets.all(10),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              width: gW,
              height: 150,
              decoration: BoxDecoration(
                color: colors['demoBY'],
              ),
            ),
            new Container(
              width: gW,
              height: 150,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: colors['demoRG'],
              ),
            )
          ],
        ),
      ),
    );
  }
}
