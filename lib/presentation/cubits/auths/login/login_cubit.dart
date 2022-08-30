import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmserv/domain/entities/user_entities.dart';
import 'package:pharmserv/domain/usecases/sign_in.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SignInUseCase? signInUseCase;
  LoginCubit({required this.signInUseCase}) : super(LoginInitial());

  Future<void> signInSubmit({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());
    try {
      await signInUseCase!.call(UserEntity(email: email, password: password));
      emit(LoginSuccess());
    } 
    catch (_) {
      emit(LoginFailure());
    }
  }
}