import 'package:pharmserv/data/models/signin_model.dart';
import 'package:pharmserv/domain/entities/forget_password_entities.dart';
import 'package:pharmserv/domain/entities/user_entities.dart';

import '../../domain/entities/reset_password_entities.dart';

abstract class AuthRemoteDataSources{
  Future<void> signIn(UserEntity user);
  Future<void> forgetPassword(ForgetPasswordEntities forgetPasswordEntities);
  Future<void> resetPassword(ResetPasswordEntities resetPasswordEntities);

}