import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_flutter/CommonFiles/ButtonWithCounterWidget.dart';
import 'package:state_management_flutter/CommonFiles/CommonListWidget.dart';
import 'package:state_management_flutter/Provider/ProviderAppState.dart';
import 'package:state_management_flutter/Provider/Screen/FavouriteBookList.dart';
import 'package:state_management_flutter/main.dart';

class BookList extends StatelessWidget {
  final List arrBooks = [
    'Don Quixote',
    'A Tale of Two Cities',
    'The Lord of the Rings',
    'The Little Prince',
    'The Hobbit',
    'The Lion, The Witch and the Wardrobe'
  ];

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<ProviderAppState>(context);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Book List'), actions: <Widget>[
        ButtonWithCounterWidget(
            Icon(Icons.shopping_cart_outlined), appState.getFavBooks.length,
            () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(builder: (context) => FavouriteBookList()),
          );
        }),
       IconButton(icon: Icon(Icons.close), onPressed: (){
          moveToRoot();
       })
      ]),
      body: Container(
        child: ListView.builder(
          itemCount: arrBooks.length,
          itemBuilder: (context, index) {
            return Row(
              children: <Widget>[
                Expanded(child: CommonListWidget(arrBooks[index])),
                (appState.getFavBooks.contains(arrBooks[index]))
                    ? IconButton(
                        icon: Icon(Icons.remove),
                        iconSize: 30,
                        onPressed: () {
                          appState.removeFavBooks(arrBooks[index]);
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.add),
                        iconSize: 30,
                        onPressed: () {
                          appState.setFavBooks(arrBooks[index]);
                        },
                      )
              ],
            );
          },
        ),
      ),
    );
  }
}
