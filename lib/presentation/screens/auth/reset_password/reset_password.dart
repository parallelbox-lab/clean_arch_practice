import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:pharmserv/presentation/widgets/form_field.dart';
import 'package:sizer/sizer.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({ Key? key }) : super(key: key);
 static String routeName = "/reset-password";
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                const BackButtonW(text:"Reset Password"),
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