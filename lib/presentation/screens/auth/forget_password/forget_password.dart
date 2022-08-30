import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:pharmserv/presentation/widgets/form_field.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants.dart';
import '../../../widgets/button_widget.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({ Key? key }) : super(key: key);
 static String routeName = "/forget-password";
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
                padding: kPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const BackButtonW(text:"Forget Password"),  
                const SizedBox(height:20),
                 CustomText(text: "Please, enter your email address. You will receive a link to create a new password via email.",size:13.sp),
                const SizedBox(height:30),
                EmailTextField(
                validationText: "Email Address",
                controller: emailController,
                onChanged: (value){},
              ),
              const SizedBox(height:36),
              ButtonWidget(
                  text: "Send",
                  press: (){}
                  ,
                ),
              ],),
            )),),
      )
    );
  }
}