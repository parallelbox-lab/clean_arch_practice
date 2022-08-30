import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ResetPasswordEntities extends Equatable{
 
 const ResetPasswordEntities({@required this.token,@required this.confirmPassword,@required this.newPassword});
  final String? token;
  final String? newPassword;
  final String? confirmPassword;
  @override
  List<Object?> get props =>[token,newPassword, confirmPassword];
}