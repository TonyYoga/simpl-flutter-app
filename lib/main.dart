
import 'package:flutter/material.dart';
import 'package:simpltaslapp/pages/home.dart';
import 'package:simpltaslapp/pages/signup.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode curFocus = FocusScope.of(context);
        if(!curFocus.hasPrimaryFocus) {
          curFocus.unfocus();
        }
      },
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/' : (context) => SignUp(),
          '/home' : (context) => Home(),
        },
      ),
    );
  }
}


