import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class PaymentStatusForm extends StatefulWidget {
  const PaymentStatusForm({ Key? key }) : super(key: key);

  @override
  State<PaymentStatusForm> createState() => _PaymentStatusFormState();
}

class _PaymentStatusFormState extends State<PaymentStatusForm> {
  TextEditingController whatsappNumberController = TextEditingController();
 List<String> paymentTypeList = [
  "Pay Now",
  "Pay on Delivery",
  "Pay Later"
 ];
 
 List<String> paymentMethodList = [
  "Cash",
  "Cheque",
  "Bank Transfer",
  "POS",
  "Not Set"
 ];
 List<String> shareInvoiceList = [
  "Email Address",
  "Whatsapp"
 ];
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
        const SizedBox(height:15),
        CustomText(text:"Payment Type", size: 12.sp,color:const Color(0xFF828282)),
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
                iconSize: 36,
                isExpanded: true,     
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                ),
                items: paymentTypeList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
         const SizedBox(height:15),
        CustomText(text:"Payment Method", size: 12.sp,color:const Color(0xFF828282)),
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
                iconSize: 36,
                isExpanded: true,     
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                ),
                items: paymentMethodList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
         const SizedBox(height:15),
        CustomText(text:"Share invoice via", size: 12.sp,color:const Color(0xFF828282)),
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
                iconSize: 36,
                isExpanded: true,     
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                ),
                items: shareInvoiceList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
         const SizedBox(height:15),
       
      const SizedBox(height:15),
       Padding(
        padding:const EdgeInsets.all(7.0),
        child: ButtonWidget(text: "Continue",press:(){}),
      )
      ],),
    );
  }
 DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));
}