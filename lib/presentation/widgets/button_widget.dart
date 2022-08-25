import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, this.text, this.press,this.color,this.textColor}) : super(key: key);
  final String? text;
  final Function? press;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: 55.0,
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0)),
              primary: Colors.white,
              backgroundColor: color ?? kPrimaryColor,
            ),
            onPressed: press as void Function()?,
            child: Text(text!,
                style: TextStyle(
                    fontFamily: 'Core Pro',
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w500,
                    color:textColor ?? Colors.white),
                textAlign: TextAlign.center)));
  }
}
