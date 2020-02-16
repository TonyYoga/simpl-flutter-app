import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/walpaper.jpg'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Center(child: Text('App title')),
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 150,
                ),
                Center(
                  child: Container(
                    height: 140,
                    width: 140,
                    child: Image(image: AssetImage('assets/logoSuper.png')),
                  ),
                ),
                Center(
                  child: Text(
                    'Heading',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10,),
                FlatButton(
                    color: Colors.grey,
                    onPressed: () {
                        print('close app');
//                        SystemNavigator.pop();
                    },
                    child: Text('CLOSE APP',
                      style: TextStyle(
                          fontSize: 20.0
                      ),))
              ],
            ),
          ),
        )
      ],
    );
  }
}
