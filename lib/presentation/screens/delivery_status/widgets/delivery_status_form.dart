import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/order_summary/order_summary.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/button_widgets2.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:pharmserv/presentation/widgets/form_field.dart';
import 'package:sizer/sizer.dart';

class DeliveryStatusForm extends StatefulWidget {
  const DeliveryStatusForm({ Key? key }) : super(key: key);

  @override
  State<DeliveryStatusForm> createState() => _DeliveryStatusFormState();
}

class _DeliveryStatusFormState extends State<DeliveryStatusForm> {
  TextEditingController salesAgentNameController = TextEditingController();
 List<String> deliveryDateList = [
 "Unknown",
 "Next 24 Hours",
 "Next 48 Hours",
 "Not set"
 ];
 String? deliveryDate;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
        const SizedBox(height:15),
        CustomText(text:"Delivery Date", size: 12.sp,color:const Color(0xFF828282)),
        Container(
              margin: const EdgeInsets.only(top: 15.0),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 48,
             decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFD7D9DA),
                width: 2,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: deliveryDate,
                iconSize: 36,
                isExpanded: true,     
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                ),
                items: deliveryDateList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {
                  deliveryDate = value;             
                }),
              ),
            )),
         const SizedBox(height:15),
       TextFieldC(
        controller: salesAgentNameController,
        validationText: "Name of Sales Agent",
       ),
      const SizedBox(height:15),
      Padding(
          padding:const EdgeInsets.all(7.0),
          child: ButtonWidget2(text: "Continue",
          press:() => Navigator.pushNamed(context, OrderSummary.routeName),text2: "Cancel",press2:(){}),
        )
      ],),
    );
  }
 DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));
}