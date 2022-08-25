import "package:flutter/material.dart";
import 'package:pharmserv/presentation/screens/orders/add_orders/widgets/add_order_fields.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
class AddOrders extends StatelessWidget {
  const AddOrders({ Key? key }) : super(key: key);
 static String routeName = "/add-orders";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(child:Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
             BackButtonW(text: "Add Order"),
             SizedBox(height: 15,),
             AddOrderFields()
            ])))
    )
    );
  }
}