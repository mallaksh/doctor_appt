import 'package:doctor_app/views/authenticate.dart';
import 'package:doctor_app/views/home.dart';
import 'package:doctor_app/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/model/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if (user == null) {
    return Authenticate();}
    else{
      return HomePage();
    }
  }
}