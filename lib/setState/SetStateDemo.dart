import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetStateDemo extends StatefulWidget {
  @override
  _SetStateDemoState createState() => _SetStateDemoState();
}

class _SetStateDemoState extends State<SetStateDemo> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('SetState Demo'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (counter != 0){
                        counter -= 1;
                      }
                    });
                  },
                  child: Text('-'),
                  color: Colors.lightBlueAccent,
                  minWidth: 30),
              SizedBox(width: 10),
              Text('$counter',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal)),
              SizedBox(width: 10),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      counter += 1;
                    });
                  },
                  child: Text('+'),
                  color: Colors.lightBlueAccent,
                  minWidth: 30),
            ],
          ),
        ));
  }
}
