import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/customers/create_new_customers/widgets/form.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';

class CreateCustomer extends StatelessWidget {
  const CreateCustomer({ Key? key }) : super(key: key);
  static String routeName = "/add-customer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(child:Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
             BackButtonW(text: "Add Customers"),
             SizedBox(height: 15,),
             CustomerForm()
            ])))
    ));
  }
}