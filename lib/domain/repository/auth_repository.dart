import 'package:pharmserv/domain/entities/Reset_password_entities.dart';
import 'package:pharmserv/domain/entities/forget_password_entities.dart';
import 'package:pharmserv/domain/entities/user_entities.dart';

abstract class AuthRepository{
 Future<void> signIn(UserEntity user); 
 Future<void> forgetPassword(ForgetPasswordEntities? forgetPassword);
 Future<void> resetPassword(ResetPasswordEntities? resetPassword);
}