import 'package:pharmserv/domain/entities/Reset_password_entities.dart';
import 'package:pharmserv/domain/repository/auth_repository.dart';

class ResetPasswordUseCase{
  final AuthRepository repository;

  ResetPasswordUseCase({required this.repository});

  Future<void> call(ResetPasswordEntities resetPasswordEntities){
    return repository.resetPassword(resetPasswordEntities);
  }
  


}