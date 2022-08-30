// import 'package:dartz/dartz.dart';
// import 'package:pharmserv/core/error/failures.dart';
// import 'package:pharmserv/core/usecases/usecase.dart';
// import 'package:pharmserv/domain/entities/login_model.dart';
// import 'package:pharmserv/domain/repository/login_repository.dart';
// // import 'package:meta/meta.dart';

// class Login extends UseCase<Login, LoginParams>{
//   final LoginRepository loginRepository;
//   Login(this.loginRepository);
//   Future<Either<Failure,Login>> call({LoginParams? params})async{
//     return await loginRepository.login(params);
//   }
// }
// class LoginParams{
//   final String? email;
//   final String? password;

//   LoginParams({
//     this.email,
//     this.password,
//   });

//   Map<String, dynamic> toJson() => {
//         "email": email,
//         "password": password,
//       };
// }