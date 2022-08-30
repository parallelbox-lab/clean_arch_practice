import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ForgetPasswordEntities extends Equatable{
 
 const ForgetPasswordEntities({@required this.email});
  final String? email;
  @override
  List<Object?> get props =>[email];
}