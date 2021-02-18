import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonListWidget extends StatelessWidget {
  CommonListWidget(this.text);
  final String text;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Text(text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.normal)),
          SizedBox(height: 10),
          Container(height: 1, color: Colors.grey)
        ],
      ),
    );
  }
}
