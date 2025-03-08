import 'package:sevanaalayam_worker/authentication/signin_model.dart';



class AuthController {
  Future<bool> signIn(UserModel user) async {
    // Simulate authentication (replace with API call)
    await Future.delayed(const Duration(seconds: 2));
    return user.email == "test@example.com" && user.password == "password";
  }
}
