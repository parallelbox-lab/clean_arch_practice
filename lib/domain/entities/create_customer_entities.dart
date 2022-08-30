import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class CreateCustomerEntities extends Equatable{
 
 const CreateCustomerEntities({@required this.email});
  final String? email;
  @override
  List<Object?> get props =>[email];
}