import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/order_summary/widgets/order_summary_body.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
class OrderSummary extends StatelessWidget {
  const OrderSummary({ Key? key }) : super(key: key);
 static String routeName = "/order-summary";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: kPadding,
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
               BackButtonW(text: "Order Summary"),
               SizedBox(height: 20,),
               OrderSummaryBody()
               
            ]),
          ),
        ),
      )
      
    );
  }
}