import 'package:flutter/cupertino.dart';

class ProviderAppState with ChangeNotifier {
  ProviderAppState();

  List<String> _arrFavBooks = [];

  void setFavBooks(String bookName) {
    _arrFavBooks.add(bookName);
    notifyListeners();
  }

  void removeFavBooks(String bookName) {
    _arrFavBooks.remove(bookName);
    notifyListeners();
  }

  List<String> get getFavBooks => _arrFavBooks;
}
