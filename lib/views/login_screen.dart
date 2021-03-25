import 'package:doctor_app/views/auth.dart';
import 'package:doctor_app/views/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/views/home.dart';
import 'package:doctor_app/main.dart';

class LoginPage extends StatefulWidget {

  final Function toggleView;
  LoginPage({this.toggleView});

  @override
  _LoginPageState createState() =>_LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();


  //text field state
  String email = '';
  String password = '';
  String error ='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
      backgroundColor: Colors.grey[400],
        elevation: 0.0,
        title: Text('Log in'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('SignUp'),
            onPressed: () {
              widget.toggleView();
            },
          )        ],
      ),
        body: Container(

          padding: EdgeInsets.all(50),

          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 25),
                      )),

                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                      onChanged: (val){
                        setState(() => email = val);
                      },

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      obscureText: true,
                      validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long' : null,
                      onChanged: (val){
                        setState(() => password = val);
                      },

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),


                  Container(
                      height: 50,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        child: Text('Log In'),
                        onPressed: () async {
                          if (_formKey.currentState.validate()){
                              dynamic result = await _auth.signInWithEmailAndPassword(email, password);

                            if(result == null){
                              setState(() => error = 'could not log in with those credentials');
                            }
                          }
                          },
                      )),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  ),
                ],
              )
          ),
        ));
  }
}