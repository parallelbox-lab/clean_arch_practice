import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetWorkInfo{
  Future<bool> get isConnected;
}
class NetWorkInfoImpl implements NetWorkInfo{
  final DataConnectionChecker? dataConnectionChecker;
  NetWorkInfoImpl({this.dataConnectionChecker});

  @override
  Future<bool> get isConnected async => await dataConnectionChecker!.hasConnection;
  
}