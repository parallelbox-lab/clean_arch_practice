import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:sizer/sizer.dart';

class ButtonWidget2 extends StatelessWidget {
  const ButtonWidget2({Key? key, this.text,this.text2,this.press,this.press2,this.color,this.textColor}) : super(key: key);
  final String? text;
  final String? text2;
  final Function? press;
  final Function? press2;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              height: 60.0,
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0)),
                    primary: Colors.white,
                    backgroundColor: color ?? kPrimaryColor,
                  ),
                  onPressed: press as void Function()?,
                  child: Text(text!,
                      style:GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontFamily: 'Core Pro',
                          fontSize: 13.0.sp,
                          fontWeight: FontWeight.w500,
                          color:textColor ?? Colors.white)),
                      textAlign: TextAlign.center))),
        ),
        const SizedBox(width: 15,),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              height: 60.0,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(7.0),
                color: Colors.white,

                ),
              child: TextButton(
                  style: TextButton.styleFrom(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(7.0)),
                    primary: Colors.black,
                  ),
                  onPressed: press2 as void Function()?,
                  child: Text(text2!,
                      style:GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontFamily: 'Core Pro',
                          fontSize: 13.0.sp,
                          fontWeight: FontWeight.w500,
                          color:const Color(0xff828282))),
                      textAlign: TextAlign.center))),
        ),
      ],
    );
  }
}
