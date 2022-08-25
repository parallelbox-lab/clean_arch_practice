import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
class OrderDetails extends StatelessWidget {
  const OrderDetails({ Key? key }) : super(key: key);
  static String routeName = "/order-details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(child:Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const BackButtonW(text: "Orders"),
             const  SizedBox(height: 10,),
             Image.asset("assets/images/Rectangle 1590.png",height:250),
             Card(
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: "Unit Price",size:14.sp,color:Colors.black,weight:FontWeight.w500),
                      CustomText(text: "NGN 700",size:17.sp,color:kBlackColor,weight:FontWeight.w600)
                    ],),
                    const SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: "Sales Quantity",size:14.sp,color:Colors.black,weight:FontWeight.w500),
                      CustomText(text: "10%",size:17.sp,color:kBlackColor,weight:FontWeight.w600)
                    ],),
                    const SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: "Free Sample Quantity",size:14.sp,color:Colors.black,weight:FontWeight.w500),
                      CustomText(text: "10%",size:17.sp,color:kBlackColor,weight:FontWeight.w600)
                    ],),
                    const SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: "Return Quantity",size:14.sp,color:Colors.black,weight:FontWeight.w500),
                      CustomText(text: "10%",size:17.sp,color:kBlackColor,weight:FontWeight.w600)
                    ],),
                      const SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: "Replace Quantity",size:14.sp,color:Colors.black,weight:FontWeight.w500),
                      CustomText(text: "10%",size:17.sp,color:kBlackColor,weight:FontWeight.w600)
                    ],),
                      const SizedBox(height:15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomText(text: "Discount",size:14.sp,color:Colors.black,weight:FontWeight.w500),
                      CustomText(text: "10%",size:17.sp,color:kBlackColor,weight:FontWeight.w600)
                    ],),
                ]),
              ),
             )
            //  CustomerForm()
            ])))
    )
      
    );
  }
}