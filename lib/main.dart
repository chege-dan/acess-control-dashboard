import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  GlobalKey<FormState> formkey2 = GlobalKey<FormState>();
  TextEditingController _emailc = TextEditingController();
  TextEditingController _passc = TextEditingController();
  var email;
  var pass;
  String e = "danchg57@gmaoil.com";
  String p = "1234";
  void validate() {
    if (formkey.currentState!.validate()) {
      if (email == e) {
        if (pass == p) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomePage()));
        }
      }
    } else {
      print("not validated");
    }
  }

  void validate2() {
    if (formkey2.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Access Control Admin Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('asset/images/download.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: formkey2,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _emailc,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                            labelText: "E-mail"),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required"),
                          EmailValidator(errorText: "Not a valid E-mail"),
                        ]),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: formkey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        obscureText: true,
                        controller: _passc,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            labelText: "Password",
                            hintText: "Enter Secure Password"),
                        validator: RequiredValidator(errorText: "Required"),
                      )
                    ],
                  )),
            ),
            // ignore: deprecated_member_use
            FlatButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  print(email = _emailc.text);
                  print(pass = _passc.text);
                  validate();
                  validate2();
                },
                child: Text(
                  'Login',
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
    );
  }
}
