
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:pharmserv/data/datasources/auth_remote_datasources.dart';
import 'package:pharmserv/data/datasources/auth_remote_datasources_impl.dart';
import 'package:pharmserv/data/repository/auth_repository_impl.dart';
import 'package:pharmserv/domain/repository/auth_repository.dart';
import 'package:pharmserv/domain/usecases/forget_password_usecase.dart';
import 'package:pharmserv/domain/usecases/sign_in.dart';
import 'package:pharmserv/presentation/cubits/auths/login/login_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';

import 'domain/usecases/reset_password_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Future bloc

  sl.registerFactory<LoginCubit>(() =>
     LoginCubit(
          // forgotPasswordUseCase: sl.call(),
          // getCreateCurrentUserUseCase: sl.call(),
          signInUseCase: sl.call(),
          // signUpUseCase: sl.call(),
          // googleSignInUseCase: sl.call()
          ));
 

  

  //UseCases
  
  sl.registerLazySingleton<SignInUseCase>(
          () => SignInUseCase(repository: sl.call()));
  sl.registerLazySingleton<ForgetPasswordUseCase>(
          () => ForgetPasswordUseCase(repository: sl.call()));
sl.registerLazySingleton<ResetPasswordUseCase>(
          () => ResetPasswordUseCase(repository: sl.call()));
  //Repository
  sl.registerLazySingleton<AuthRepository>(
          () => AuthRepositoryImpl(authRemoteDataSources: sl.call()));

  //Remote DataSource
  sl.registerLazySingleton<AuthRemoteDataSources>(
          () => AuthRemoteDataSourcesImpl(client: sl()));

//! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());
  //External
  // final auth = FirebaseAuth.instance;
  // final fireStore = FirebaseFirestore.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn();

  // sl.registerLazySingleton(() => auth);
  // sl.registerLazySingleton(() => fireStore);
  // sl.registerLazySingleton(() => googleSignIn);
}