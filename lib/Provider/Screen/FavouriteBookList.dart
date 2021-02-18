import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_flutter/CommonFiles/CommonListWidget.dart';
import 'package:state_management_flutter/Provider/ProviderAppState.dart';

class FavouriteBookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<ProviderAppState>(context);

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Saved Book List')),
      body: Container(
        child: ListView.builder(
            itemCount: appState.getFavBooks.length,
            itemBuilder: (context, index) {
              return CommonListWidget(appState.getFavBooks[index]);
            }),
      ),
    );
  }
}
