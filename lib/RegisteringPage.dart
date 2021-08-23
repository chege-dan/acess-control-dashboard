import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/main.dart';
import 'RegisterPage.dart';
import 'AttendancePage.dart';
import 'HomePage.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisteringPage extends StatefulWidget {
  @override
  _RegisteringPageState createState() => _RegisteringPageState();
}

class _RegisteringPageState extends State<RegisteringPage> {
  GlobalKey<FormState> formkeyname = GlobalKey<FormState>();
  GlobalKey<FormState> formkeyrfid = GlobalKey<FormState>();
  TextEditingController _namec = TextEditingController();
  TextEditingController _rfidc = TextEditingController();
  var name;
  var rfid;

  void validate() {
    if (formkeyname.currentState!.validate()) {
      if (formkeyrfid.currentState!.validate()) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => RegisterPage()));
      } else {
        print("not validated");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registering New User Page'),
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
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
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
                        MaterialPageRoute(builder: (_) => AttendancePage()));
                  },
                  child: Text("View attendance")),
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),

                child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: formkeyname,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 150,
                        ),
                        TextFormField(
                          controller: _namec,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.account_circle_sharp),
                              border: OutlineInputBorder(),
                              labelText: "Name",
                              hintText: "Enter New User Name"),
                          validator: RequiredValidator(errorText: "Required"),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: formkeyrfid,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          obscureText: true,
                          controller: _rfidc,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.keyboard_sharp),
                              border: OutlineInputBorder(),
                              labelText: "Rfid",
                              hintText: "Enter Card Rfid Number"),
                          validator: RequiredValidator(errorText: "Required"),
                        )
                      ],
                    )),
              ),
              // ignore: deprecated_member_use
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    print(name = _namec.text);
                    print(rfid = _rfidc.text);
                    validate();
                  },
                  child: Text(
                    'Register User',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
