import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:start_flutter/home_page.dart';
import 'package:start_flutter/main.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  ));

  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StartPage(),
  ));
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    void click() {}
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'Task Planner',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Image.asset(
                'assets/images/image6.jpg',
                scale: 0.3,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text('Login',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              color: Colors.grey[850],
              padding: EdgeInsets.symmetric(
                  vertical: 11.0, horizontal: width * 0.05),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Create()),
                );
              },
              child: Text('Create new Account',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              color: Colors.grey[850],
              padding: EdgeInsets.symmetric(
                  vertical: 11.0, horizontal: width * 0.05),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {


    var width = MediaQuery.of(context).size.width;

    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffff).withOpacity(1.0),
        leading: Navigator.canPop(context)
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 27,
                ),
                onPressed: () => Navigator.of(context).pop(),
              )
            : null,
        title: Text('Welcome,',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Welcome,',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
              Text('Sign in to continue!',
                  style: TextStyle(fontSize: 18.0, color: Colors.grey)),
            ],
          ),
          Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/image7.jpg',
                      scale: 2.0,
                    ),
                  ])),
          Container(
            padding: EdgeInsets.all(10.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Email'))),
              Container(height: 10),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password')
                  )
              ),
              Container(height: 10),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.05),
              child: Container(
                width: width - 2 * width * 0.05,
                child: FlatButton(
                  color: Colors.grey[850],
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                      vertical: 11.0, horizontal: width * 0.05),
                  splashColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Create extends StatefulWidget {
  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffff).withOpacity(1.0),
        leading: Navigator.canPop(context)
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 27,
                ),
                onPressed: () => Navigator.of(context).pop(),
              )
            : null,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Create Account,',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
              Text('Sign up to get started!',
                  style: TextStyle(fontSize: 18.0, color: Colors.grey)),
            ],
          ),
          Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/image8.jpg',
                      scale: 1.5,
                    ),
                  ])),
          Container(
            padding: EdgeInsets.all(10.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'User name'))),
                  Container(height: 10), Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05), child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Email'))),
                  Container(height: 10),
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05), child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password'))),
              Container(height: 10),
            ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, width * 0.05),
              child: Container(
                width: width - 2 * width * 0.05,
                child: FlatButton(
                  color: Colors.grey[850],
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                      vertical: 11.0, horizontal: width * 0.05),
                  splashColor: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    print("button pressed");
                  },
                  child: Text(
                    "Create new Account",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
