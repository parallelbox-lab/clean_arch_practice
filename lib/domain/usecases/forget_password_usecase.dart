import 'package:pharmserv/domain/entities/forget_password_entities.dart';
import 'package:pharmserv/domain/repository/auth_repository.dart';

class ForgetPasswordUseCase{
  final AuthRepository repository;

  ForgetPasswordUseCase({required this.repository});

  Future<void> call(ForgetPasswordEntities forgetPasswordEntities){
    return repository.forgetPassword(forgetPasswordEntities);
  }
}