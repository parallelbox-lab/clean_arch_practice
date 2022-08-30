import 'package:pharmserv/domain/entities/user_entities.dart';

class SignInModel extends UserEntity{
 const SignInModel({String? email,String? password
 }):super(email: email,password:password);
   factory  SignInModel.fromJson(Map<String, dynamic> json){
    return SignInModel(
      email: json['email'],
      password: json['password']
    );
       
    }
    Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email'] = email;
    _data['password'] = password;
    return _data;
    }
}