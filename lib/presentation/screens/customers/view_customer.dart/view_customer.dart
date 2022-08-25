import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/customers/view_customer.dart/widgets/view_customer.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';

class ViewCustomerDetails extends StatelessWidget {
  const ViewCustomerDetails({ Key? key }) : super(key: key);
  static String routeName = "/view-customer-details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:
       SingleChildScrollView(
        child:Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
         BackButtonW(text: "Customers",),
         SizedBox(height:25),
         Center(child: ViewCustomerDetailsForm())
       ],),
        ) ,))
    );
  }
}