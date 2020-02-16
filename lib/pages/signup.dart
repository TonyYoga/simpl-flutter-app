import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/wallpaper_signup.jpeg'),
            fit: BoxFit.cover,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  color: Colors.grey,
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text('LOGO',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 2,
                        )
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  child: Center(
                    child: Text(
                      'Some text',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Enter your email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 2,
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        autofocus: false,
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Text(
                        'Enter your password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 2,
                        ),
                      ),
                      TextField(
                        onTap: () {},
                        autofocus: false,
                        decoration: InputDecoration(
                          fillColor: Colors.grey,
                          filled: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                          color: Colors.grey,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(fontSize: 20.0),
                          )
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
