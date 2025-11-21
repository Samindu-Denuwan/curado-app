import 'package:flutter/cupertino.dart';

class RouterServices with ChangeNotifier {
  bool _isInitialized = false;
  bool get isInitialized => _isInitialized;

  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;

  bool _isPreLoginMenuItem = false;
  bool get isPreLoginMenuItem => _isPreLoginMenuItem;

  set isInitialized(bool value) {
    _isInitialized = value;
    notifyListeners();
  }

  set isSignedIn(bool value) {
    _isSignedIn = value;
    notifyListeners();
  }

  set isPreLoginMenuItem(bool value) {
    _isPreLoginMenuItem = value;
    notifyListeners();
  }
}
