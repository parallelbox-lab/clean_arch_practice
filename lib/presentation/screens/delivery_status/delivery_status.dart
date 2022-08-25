import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/delivery_status/widgets/delivery_status_form.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
class DeliveryStatus extends StatelessWidget {
  const DeliveryStatus({ Key? key }) : super(key: key);
 static String routeName = "/delivery-status";
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
               BackButtonW(text: "Delivery Status"),
               SizedBox(height: 15,),
               DeliveryStatusForm()
               
            ]),
          ),
        ),
      )
      
    );
  }
}