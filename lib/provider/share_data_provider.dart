import 'package:flutter/material.dart';

class ShareDataProvider extends ChangeNotifier {
  String sharedData = "Hello";

  void SharingData({required String newData}) {
    sharedData = newData;
    notifyListeners();
  }
}
