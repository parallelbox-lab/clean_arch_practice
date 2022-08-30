import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class OrderSummaryBody extends StatelessWidget {
  const OrderSummaryBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border:Border.all(width:2,color:const Color(0xffEEEEEE)),
            borderRadius: BorderRadius.circular(10)
          ),
        child: ListView.builder(
            shrinkWrap: true,
            physics:const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     CustomText(text: "Product Name",size:12.sp,color:const Color(0xff828282)),
                     CustomText(text: "Paracetamol",size:12.sp,color:kBlackColor),
                  ],
                ),
              ],
            );
          })),
        ),]);
        

      
  }
}