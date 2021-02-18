import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'InhertiedWidgetDemoScreen.dart';

class InheritAppMainClass extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InheritedWidgetDemoScreen(),
    );
  }
}
