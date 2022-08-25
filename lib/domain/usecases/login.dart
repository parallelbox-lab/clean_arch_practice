import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pharmserv/core/error/failures.dart';
import 'package:pharmserv/core/usecases/usecase.dart';
import 'package:pharmserv/domain/entities/login_model.dart';
import 'package:pharmserv/domain/repository/login_repository.dart';
// import 'package:meta/meta.dart';

class Login{
  final LoginRepository loginRepository;
  Login(this.loginRepository);
  Future<Either<Failure,LoginModel>> call({LoginModel? login})async{
    return await loginRepository.login(login!);
  }
}