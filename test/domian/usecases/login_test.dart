// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:pharmserv/domain/entities/login_model.dart';
// import 'package:pharmserv/domain/repository/login_repository.dart';
// import 'package:pharmserv/domain/usecases/login.dart';

// class MockLoginRepository extends Mock implements LoginRepository{}

// void main(){
//   late Login useCase;
//   late MockLoginRepository mockLoginRepository;
//   setUp((){
//    mockLoginRepository = MockLoginRepository();
//    useCase = Login(mockLoginRepository);
//   });

//   const tLogin = LoginModel(email: "owoeyeprecious36@gmail.com", password: "1234567", rememberMe: true);
//   const tEmail = "owoeyeprecious36@gmail.com";
//   test('usecase call repository', () async {
//     // arrange
//     when(mockLoginRepository.login(tLogin)).thenAnswer((_) async => const Right(tLogin));
//     // act
//     final result = await useCase(login:tLogin);
//     // assert
//     expect(result, const Right(tLogin));
//     verify(mockLoginRepository.login(tLogin));
//     verifyNoMoreInteractions(mockLoginRepository);
//   });
// }