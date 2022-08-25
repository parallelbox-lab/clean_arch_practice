import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/payment_status/widgets/payment_status_form.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
class PaymentStatus extends StatelessWidget {
  const PaymentStatus({ Key? key }) : super(key: key);
 static String routeName = "/payment-status";
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
               BackButtonW(text: "Payment Status"),
               SizedBox(height: 15,),
               PaymentStatusForm()
               
            ]),
          ),
        ),
      )
      
    );
  }
}