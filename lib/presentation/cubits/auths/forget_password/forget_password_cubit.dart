import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmserv/domain/entities/forget_password_entities.dart';
import 'package:pharmserv/domain/usecases/forget_password_usecase.dart';
part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  final ForgetPasswordUseCase? forgetPasswordUseCase;
  ForgetPasswordCubit({required this.forgetPasswordUseCase}) : super(ForgetPasswordInitial());

  Future<void> signInSubmit({
    required String email,
  }) async {
    emit(ForgetPasswordLoading());
    try {
      await forgetPasswordUseCase!.call(ForgetPasswordEntities(email: email));
      emit(ForgetPasswordSuccess());
    } 
    catch (_) {
      emit(ForgetPasswordFailure());
    }
  }
}