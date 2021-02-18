import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWithCounterWidget extends StatelessWidget {
  ButtonWithCounterWidget(this.image, this.counter, this.onPressed);
  final Icon image;
  final int counter;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Container(
          height: 150.0,
          width: 30.0,
          child: new GestureDetector(
            onTap: () {},
            child: new Stack(
              children: <Widget>[
                new IconButton(
                  icon: image,
                  onPressed: onPressed,
                ),
                counter == 0
                    ? new Container()
                    : new Positioned(
                        child: new Stack(
                        children: <Widget>[
                          new Icon(Icons.brightness_1,
                              size: 20.0, color: Colors.green[800]),
                          new Positioned(
                              top: 3.0,
                              right: 4.0,
                              child: new Center(
                                child: new Text(
                                  counter.toString(),
                                  style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              )),
                        ],
                      )),
              ],
            ),
          )),
    );
  }
}
