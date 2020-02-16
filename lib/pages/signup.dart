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
                  colorFilter:
                      ColorFilter.mode(Colors.grey[850], BlendMode.darken))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 5, 25, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 55,
                  child: Center(
                    child: Image(image: AssetImage('assets/healthlogo.png')),
                  ),
                ),
                Flexible(
                  flex: 1,
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
                    flex: 3,
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
                        Container(
                          height: 35,
                          child: TextField(
                            onTap: () {},
                            autofocus: false,
                            decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Enter your password',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            letterSpacing: 2,
                          ),
                        ),
                        Container(
                          height: 35,
                          child: TextField(
                            onTap: () {},
                            autofocus: false,
                            decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                            color: Colors.grey,
                            onPressed: () {
                              Navigator.pushReplacementNamed(context, '/home');
                            },
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(fontSize: 20.0),
                            )),
                        Text(
                          'Powered by Dart Weider',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey[700]),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
