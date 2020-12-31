import 'package:flutter/cupertino.dart';

class ProviderClass with ChangeNotifier {
  List<String> data = [];
  addItem(String title) {
    data.add(title);
    notifyListeners();
  }
}
