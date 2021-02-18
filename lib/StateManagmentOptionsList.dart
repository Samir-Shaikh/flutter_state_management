import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_management_flutter/Bloc/Screen/BlocMainScreen.dart';
import 'package:state_management_flutter/CommonFiles/CommonListWidget.dart';
import 'package:state_management_flutter/InheritedWidget/InhertiedWidgetDemoScreen.dart';
import 'package:state_management_flutter/Provider/ProviderMainClass.dart';
import 'package:state_management_flutter/Provider/Screen/BookList.dart';
import 'package:state_management_flutter/setState/SetStateDemo.dart';

import 'InheritedWidget/InheritAppMainClass.dart';
import 'InheritedWidget/InheritedStateContainer.dart';

class StateManagementOptionList extends StatelessWidget {
  final List arrOptions = [
    'setState',
    'Provider',
    'InheritedWidget & InheritedModel',
    'BLoC',
  ];
  // 'Redux',
  // 'Fish-Redux',
  // 'MobX',
  // 'Binder',
  // 'GetX',
  // 'Riverpod'
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('State Management Options')),
      body: Container(
        child: ListView.builder(
          itemCount: arrOptions.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (index == 0) {
                  //setState Demo
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(builder: (context) => SetStateDemo()),
                  );
                } else if (index == 1) {
                  //Provider
                  //Check this line carefully here we are using provider main class
                 runApp(ProviderMainClass());
                }
                else if (index == 2) {
                  //Inherited Widget Demo
                  //Check this line carefully here we init our state class
                  runApp(InheritedStateContainerWidget(child: InheritAppMainClass()));
                }
                else if (index == 3) {
                  //Bloc  Demo
                  //Check this line carefully here we init our state class
                  runApp(BlocMainScreen());
                }
              },
              child: CommonListWidget(arrOptions[index]),
            );
          },
        ),
      ),
    );
  }
}

