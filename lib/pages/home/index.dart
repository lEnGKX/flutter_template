import 'package:flutter/material.dart';
import 'package:flutter_template/generated/l10n.dart';

import 'package:flutter_template/http/https.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => new _Home();
}

class _Home extends State<Home> {
  String requestData = 'null'; // 局部 state

  @override
  Widget build(BuildContext context) {
    final intls = S.of(context);

    // 请求方法
    onGetUsersTestDataAll() {
      Https.getUsersTestDataAll().then((res) {
        // setState 更改 state
        setState(() {
          requestData = res['data'].toString();
        });
      });
    }

    print(requestData);

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(intls.Home),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new FlatButton(
              color: Colors.blue,
              highlightColor: Colors.redAccent[700],
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                intls.jumpDemoPage('Demo'),
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/demo');
              },
            ),
            new FlatButton(
              color: Colors.blue,
              highlightColor: Colors.redAccent[700],
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text(
                intls.mockRequest,
                style: TextStyle(color: Colors.white),
              ),
              onPressed: onGetUsersTestDataAll,
            ),
            new Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(border: Border.all(width: 0.5)),
                child: new Text(requestData))
          ],
        ),
      ),
    );
  }
}
