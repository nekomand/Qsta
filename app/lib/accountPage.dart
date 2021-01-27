import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0x191718),
      appBar: new AppBar(
        title: new Text('プロフィール'),
        backgroundColor: Color(0x191718),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('Sub'),
              RaisedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: new Text('戻る'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
