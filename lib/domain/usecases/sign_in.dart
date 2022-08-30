import 'package:pharmserv/domain/entities/user_entities.dart';
import 'package:pharmserv/domain/repository/auth_repository.dart';

class SignInUseCase{
  final AuthRepository repository;

  SignInUseCase({required this.repository});
  Future<void> call(UserEntity user){
    print(user.email);
    return repository.signIn(user);
  }
}