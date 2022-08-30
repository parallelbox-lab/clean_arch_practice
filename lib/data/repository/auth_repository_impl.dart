import 'package:pharmserv/core/networks/network_info.dart';
import 'package:pharmserv/data/datasources/auth_remote_datasources.dart';
import 'package:pharmserv/domain/entities/Reset_password_entities.dart';
import 'package:pharmserv/domain/entities/forget_password_entities.dart';
import 'package:pharmserv/domain/entities/user_entities.dart';
import 'package:pharmserv/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository{
  final NetWorkInfo? netWorkInfo;
  final AuthRemoteDataSources? authRemoteDataSources;

  AuthRepositoryImpl({this.netWorkInfo,this.authRemoteDataSources});
  @override
  Future<void> signIn(UserEntity user)async {
    netWorkInfo!.isConnected;
    try{
     await authRemoteDataSources!.signIn(user);
    }catch(e){
      rethrow;
  }

    

  }

  @override
  Future<void> forgetPassword(ForgetPasswordEntities? forgetPassword) async {
    netWorkInfo!.isConnected;
    try{
     await authRemoteDataSources!.forgetPassword(forgetPassword!);
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(ResetPasswordEntities? resetPasswordEntities) async {
  netWorkInfo!.isConnected;
    try{
    //  await authRemoteDataSources!.resetPassword(resetPasswordEntities);
    }catch(e){
      rethrow;
    }
  }

}