import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socibip/features/auth/repository/auth_repository.dart';

final authControllerProvider = Provider(
  (ref) => AuthController(
    authRepository: ref.read(authRepositoryProvider),
  ),
);

class AuthController {
  final AuthRepository _authController;
  AuthController({required AuthRepository authRepository})
      : _authController = authRepository;

  void signInWithGoogle() {
    _authController.signInWithGoogle();
  }
}
