import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int leftDiceNumber = 1;
    int rightDiceNumber = 1;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  print('Left button got pressed');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: FlatButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  print('Right button got pressed');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
