import 'package:flutter/material.dart';
import 'package:provider_and_imageloading/model/user_preference.dart';

class UserPreferenceState extends ChangeNotifier {
  var _userPreference = UserPreference(
    darkTheme: false,
    username: '',
    email: '',
  );

  UserPreference get userPreference => _userPreference;

  void updateDarkMode(bool darkTheme) {
    _userPreference = _userPreference.copyWith(darkTheme: darkTheme);
    notifyListeners();
  }

  void updateUserInfo(String username, String email) {
    _userPreference = _userPreference.copyWith(username: username, email: email);
    notifyListeners();
  }
}
