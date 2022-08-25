import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
class SuccessPopup extends StatelessWidget {
  const SuccessPopup({ Key? key,this.text,this.image}) : super(key: key);
 final String? text;
 final String? image;
  @override
  Widget build(BuildContext context) {
        return Dialog(
        insetPadding: const EdgeInsets.all(25),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Container(
          padding:
              EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 7.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             Image.asset("assets/icons/tick-circle.png",width:90),
            const SizedBox(height: 7,),
            CustomText(text: text,size:16.sp,weight:FontWeight.w600),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left:17.0,right:17.0),
              child: ButtonWidget(text: "Continue",press:(){
                Navigator.pop(context);
              }),
            )
            ])));
  }
}
//  showDialog(
//         barrierDismissible: false,
//         context: context,
//         builder: (BuildContext context) {