import 'package:flutter/material.dart';

class LoginProviderForm extends ChangeNotifier {
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  String email = '';
  String password = '';

  bool _loading = false;
  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool validForm() {
    return keyForm.currentState?.validate() ?? false;
  }
}
