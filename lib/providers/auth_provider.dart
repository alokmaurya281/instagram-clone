import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String _error = '';
  String get error => _error;

  Future<void> login() async {
    _error = '';
    _isLoading = true;

    _isAuthenticated = true;
    _isLoading = false;
    notifyListeners();
  }
}
