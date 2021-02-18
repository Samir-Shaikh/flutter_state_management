import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management_flutter/CommonFiles/ButtonWithCounterWidget.dart';
import 'package:state_management_flutter/main.dart';
import 'InheritedStateContainer.dart';

class InheritedWidgetDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final container = InheritedStateContainerWidget.of(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Inherited Widget Demo'), actions: <Widget>[
        ButtonWithCounterWidget(Icon(Icons.shopping_cart_outlined), container.cartCounter ?? 0, () {}),
        IconButton(icon: Icon(Icons.close), onPressed: (){
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
              onPressed: (){

                var count = container.cartCounter ?? 0;
                container.updateCart(count+1);
              },
            ),
            SizedBox(height: 10),
            FlatButton(
              child: Text('Remove From Cart'),
              color: Colors.lightBlueAccent,
              onPressed: (){

                var count = container.cartCounter ?? 0;
                if (count != 0){

                  container.updateCart(count - 1);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
