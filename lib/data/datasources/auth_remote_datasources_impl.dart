import 'dart:convert';
import 'dart:io';

import 'package:pharmserv/core/api_url/api.dart';
import 'package:pharmserv/data/datasources/auth_remote_datasources.dart';
import 'package:pharmserv/domain/entities/forget_password_entities.dart';
// import 'package:pharmserv/data/models/signin_model.dart';
import 'package:pharmserv/domain/entities/user_entities.dart';
import 'package:http/http.dart' as http;

import '../../domain/entities/reset_password_entities.dart';

class AuthRemoteDataSourcesImpl implements AuthRemoteDataSources{
  final http.Client? client;
  AuthRemoteDataSourcesImpl({this.client});
  
  @override
  Future<void> signIn(UserEntity user)async {
      const url = Api.loginUrl;
       await http.post(Uri.parse(url),
          body: json.encode({
            'email': user.email,
            'password': user.password,
          }),
          headers: {
            "Content-Type": "application/json"
          }).timeout(const Duration(seconds: 30));
  }

  @override
  Future<void> forgetPassword(ForgetPasswordEntities forgetPasswordEntities)async {
     const url = Api.loginUrl;
       await http.post(Uri.parse(url),
          body: json.encode({
            'email': forgetPasswordEntities.email,
          }),
          headers: {
            "Content-Type": "application/json"
          }).timeout(const Duration(seconds: 30));
  }

  @override
  Future<void> resetPassword(ResetPasswordEntities resetPasswordEntities)async {
     const url = Api.loginUrl;
       await http.post(Uri.parse(url),
          body: json.encode({
            "token":resetPasswordEntities.token,
            "confirmPassword":resetPasswordEntities.confirmPassword,
            "newPassword": resetPasswordEntities.newPassword
          }),
          headers: {
            "Content-Type": "application/json"
          }).timeout(const Duration(seconds: 30));
  }

}