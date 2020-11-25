import 'package:flutter/material.dart';
import 'package:flutter_template/generated/l10n.dart';

class My extends StatefulWidget {
  @override
  _My createState() => new _My();
}

class _My extends State<My> {
  @override
  Widget build(BuildContext context) {
    final intls = S.of(context);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(intls.My),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Container(
                width: MediaQuery.of(context).size.width, // 获取屏幕的宽度
                height: 55,
                child: new FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  child: new Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Icon(Icons.settings,size: 20),
                          new Padding(padding: EdgeInsets.only(right: 10)),
                          new Text(intls.Setting),
                        ],
                      ),
                      new Icon(Icons.chevron_right),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
