import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class PassportPage extends StatefulWidget {
  static String id = 'PassportPage';

  @override
  _PassportPageState createState() => _PassportPageState();
}

class _PassportPageState extends State<PassportPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text('Access Brandywine'),
        ),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Desa Burton',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    radius: 120.0,
                    backgroundImage: AssetImage('images/Desa.jpg'),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Issued: 07/01/2020',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'Expires: 07/01/2020 ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'Last visit: 07/02/2020 ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'Approved by: John Doe',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          color: Colors.white38,
                          onPressed: () async =>
                              UrlLauncher.launch("tel://9167051794"),
                          child: Text('Call me')),
                      SizedBox(
                        width: 4,
                      ),
                      RaisedButton(
                          color: Colors.white38,
                          onPressed: () async =>
                              UrlLauncher.launch('mailto:apehow111@gmail.com'),
                          child: Text('Email me')),
                      SizedBox(
                        width: 4,
                      ),
                      RaisedButton(
                          color: Colors.white38,
                          onPressed: () =>
                              UrlLauncher.launch("sms://9167051794"),
                          child: Text('Text me')),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20.0, 80.0, 5.0, 60.0),
                      child: Material(
                        color: Colors.white38,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            // push the current context to the routeName
                            Navigator.pushNamed(context, '/');
                          },
                          minWidth: 200.0,
                          height: 20.0,
                          child: Text(
                            'Logout',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
