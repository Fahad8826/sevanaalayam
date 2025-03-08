import 'package:flutter/material.dart';
import 'package:sevanaalayam_worker/authentication/auth_controller.dart';
import 'package:sevanaalayam_worker/authentication/signin_model.dart';


class AuthProvider extends ChangeNotifier {
  final AuthController _authController = AuthController();
  bool isLoading = false;
  String? errorMessage;

  Future<void> signIn(String email, String password) async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    UserModel user = UserModel(email: email, password: password);
    bool success = await _authController.signIn(user);

    isLoading = false;
    if (!success) {
      errorMessage = "Invalid email or password";
    }
    notifyListeners();
  }
}
