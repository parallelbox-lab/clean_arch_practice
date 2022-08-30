import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/customers/view_customer.dart/widgets/view_customer.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

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
          children: [
        //  BackButtonW(text: "Customers",),
      Container(
          padding:const EdgeInsets.all(0.0),
          decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(
                  1.0,
                  1.0,
                ),
                blurRadius: 1.0,
                spreadRadius: 0.0,
              ), ],
              color:Colors.white
              ),
          child: IconButton(
              icon: Icon(Icons.arrow_back,size:20.sp, color: Colors.black),
              onPressed: () {
                Navigator.of(context).pop();
              }),
        ),
        const SizedBox(height:25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: "Customers",size: 17.sp,weight: FontWeight.bold,color:const Color(0xff444444)),
            Row(
              children: [
                Image.asset("assets/icons/add.png",width:20),
                const SizedBox(width:5),
                CustomText(text: "Add Order",size: 13.sp,weight: FontWeight.w500,color:kPrimaryColor),
              ],
            ),

          ],
        ),
         const SizedBox(height:10),
        const Center(child: ViewCustomerDetailsForm())
       ],),
        ) ,))
    );
  }
}