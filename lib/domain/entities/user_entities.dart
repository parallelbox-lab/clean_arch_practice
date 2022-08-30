import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class UserEntity extends Equatable {

 final String? email;
  final String? password;
  // final String phoneNumber;
  // final bool isOnline;
  // final String uid;
  // final String status;
  // final String profileUrl;
  // final String password;
  // final String dob;
  // final String gender;

  const UserEntity({
    // this.name="",
    @required this.email,
    // this.phoneNumber="",
    // this.isOnline = false,
    // this.uid="",
    // this.status = "Hello there i'm using this app",
    // this.profileUrl="",
    @required this.password,
    // this.dob="",
    // this.gender="",
  });

  @override
  List<Object> get props => [
    // name,
    email!,
    // phoneNumber,
    // isOnline,
    // uid,
    // status,
    // profileUrl,
    password!,
    // dob,
    // gender,
  ];
}