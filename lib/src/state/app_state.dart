import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  var _loggedIn = false;
  bool get loggedIn { return _loggedIn; }

  void login(String email, String password) {
    const correctEmail = 'email@example.com';
    const correctPassword = 'password';

    if (email == correctEmail && password == correctPassword) {
      _loggedIn = true;
    }
    notifyListeners();
  }

  void logout() {
    _loggedIn = false;
    notifyListeners();
  }
  void isAuthorised() => _loggedIn;
}
