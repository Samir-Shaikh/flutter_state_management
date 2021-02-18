import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_flutter/Bloc/bloc/CartBloc.dart';
import 'BlocDemoScreen.dart';

class BlocMainScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CartBloc>(
        create: (context) => CartBloc(),
        child: BlocDemoScreen(),
      ),
    );
  }
}