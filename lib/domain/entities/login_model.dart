import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class LoginModel extends Equatable{
 
 const LoginModel({@required this.email,@required this.password,@required this.rememberMe});
  final String? email;
  final String? password;
  final bool? rememberMe;
  @override
  List<Object?> get props =>[email,password,rememberMe];
}