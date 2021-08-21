import 'package:flutter/material.dart';
import 'package:dashboard/main.dart';
import 'RegisterPage.dart';
import 'HomePage.dart';

class AttendancePage extends StatefulWidget {
  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  var row;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Attendance Page'),
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
                          MaterialPageRoute(builder: (_) => RegisterPage()));
                    },
                    child: Text("Register Users")),
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
        ));
  }
}
