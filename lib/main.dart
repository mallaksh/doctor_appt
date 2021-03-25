import 'package:doctor_app/views/auth.dart';
import 'package:doctor_app/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/views/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:doctor_app/model/user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.blue),
          home: Wrapper()),
    );
}
}

