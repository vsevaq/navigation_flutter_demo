import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen0.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              child: Text('Go Back To Screen 1'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Screen1();
                }));
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Go Back to Screen 0'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Screen0();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
