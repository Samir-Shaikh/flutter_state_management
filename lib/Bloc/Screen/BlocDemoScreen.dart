import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_flutter/Bloc/bloc/CartBloc.dart';
import 'package:state_management_flutter/Bloc/bloc/CartEvent.dart';
import 'package:state_management_flutter/CommonFiles/ButtonWithCounterWidget.dart';
import '../../main.dart';

// ignore: must_be_immutable
class BlocDemoScreen extends StatelessWidget {
  CartBloc _cartBloc;
  @override
  Widget build(BuildContext context) {
    _cartBloc = BlocProvider.of<CartBloc>(context);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Demo'), actions: <Widget>[
        BlocBuilder<CartBloc, int>(
          builder: (context, state) {
            return ButtonWithCounterWidget(
                Icon(Icons.shopping_cart_outlined), state, () {});
          },
        ),
        IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              moveToRoot();
            })
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Add To Cart'),
              color: Colors.lightBlueAccent,
              onPressed: () {
                _cartBloc.add(CartEvent.addToCart);
              },
            ),
            SizedBox(height: 10),
            FlatButton(
              child: Text('Remove From Cart'),
              color: Colors.lightBlueAccent,
              onPressed: () {
                _cartBloc.add(CartEvent.removeFromCart);
              },
            )
          ],
        ),
      ),
    );
  }
}
