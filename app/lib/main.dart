import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qsta_app/accountPage.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //initialRoute: '/', 初期画面
      home: LoginPage(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MainPage(),
        '/subpage': (BuildContext context) => new SubPage()
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  int _counter = 0;
  var color = new Color(0x191718);

  void login() {
    setState(() {
      _counter++;
    });
  }

  var mailadress = "@";
  var password;
  void _handleMailadress(String e) {
    setState(() {
      mailadress = e;
    });
  }

  void _handlepassword(String e) {
    setState(() {
      password = e;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0x191718),
      body: new Container(
        padding: new EdgeInsets.fromLTRB(40, 100, 40, 32),
        child: SingleChildScrollView(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset("img/logo/logo_message.png"),
              new TextField(
                enabled: true,
                // 入力数
                maxLength: 10,
                maxLengthEnforced: false,
                style: TextStyle(color: Colors.white),
                obscureText: false,
                maxLines: 1,
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail, color: Colors.white),
                  labelText: 'MailAddress *',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                //パスワード
                onChanged: _handlepassword,
              ),
              new TextField(
                enabled: true,
                // 入力数
                maxLength: 10,
                maxLengthEnforced: false,
                style: TextStyle(color: Colors.white),
                obscureText: false,
                maxLines: 1,
                decoration: const InputDecoration(
                  icon: Icon(Icons.face, color: Colors.white),
                  labelText: 'Password *',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                //パスワード
                onChanged: _handlepassword,
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text(
                    'ログイン',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: color,
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white)),
                  onPressed: (login),
                ),
              ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                child: RaisedButton(
                  child: Text(
                    '新規作成',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: color,
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white)),
                  onPressed: () => Navigator.of(context).pushNamed("/subpage"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
