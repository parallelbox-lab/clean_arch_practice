import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CreateOrderEntities extends Equatable{
 
 const CreateOrderEntities({@required this.email});
  final String? email;
  @override
  List<Object?> get props =>[email];
}