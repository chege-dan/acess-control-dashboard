import 'package:dashboard/main.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'RegisteringPage.dart';
import 'AttendancePage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var row;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register Page'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => HomePage()));
                    },
                    child: Text("Home Page")),
              ),
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => AttendancePage()));
                    },
                    child: Text("View Attendance")),
              ),
              Container(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LoginDemo()));
                    },
                    child: Text("LOG OUT")),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => RegisteringPage()));
          },
          child: Icon(Icons.add),
        ));
  }
}
