import 'package:dartz/dartz.dart';
import 'package:pharmserv/core/error/failures.dart';
import 'package:pharmserv/domain/entities/login_model.dart';

abstract class LoginRepository {
 Future<Either<Failure,LoginModel>> login(LoginModel login);
}