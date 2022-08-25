import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class BackButtonW extends StatelessWidget {
  const BackButtonW({ Key? key,required this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        CustomText(text: text,size: 16.sp,weight: FontWeight.bold,color:const Color(0xff444444)),
      ],
    );
  }
}