import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/bottom_navigation.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:pharmserv/presentation/widgets/form_field.dart';
import 'package:sizer/sizer.dart';
import '../forget_password/forget_password.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);
 static String routeName = "/login";
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   final _formKey = GlobalKey<FormState>();
   bool password = false;
  bool _isVisible = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _value = false;
  void passwordStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: kPadding,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const BackButtonW(text:"Login"),      
              const SizedBox(height:20),
              EmailTextField(
              validationText: "Email Address",
              controller: emailController,
              onChanged: (){},
            ),
            const SizedBox(height:15),
            CustomText(text:"Password", size: 12.sp,color:const Color(0xFF828282),weight:FontWeight.w400),
            Container(
            height:48,
            margin: const EdgeInsets.only(top: 15.0),
            child: _buildPasswordField(),
            ),    
            const SizedBox(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [         
              // CustomText(text: "Remember Me",size:12.sp),
              Expanded(
                child: CheckboxListTile(
                  contentPadding: EdgeInsets.zero,                               
                  title:CustomText(text: "Remember Me",size:12.sp,color:const Color(0xFF828282)),
                  value: _value,
                  onChanged: (newValue) { 
                   setState(() {
                     _value = newValue!; 
                   }); 
                 },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, ForgetPassword.routeName);
                },
                child: CustomText(text: "Forget Password",size:12.sp,color:const Color(0xFFFFC80A))),


            ],)  ,  
              const SizedBox(height:26),
              ButtonWidget(
                text: "Login",
                press: (){
                  Navigator.pushNamedAndRemoveUntil(context, BottomNavigation.routeName, (route) => false);
                }
                ,
              ),
              const SizedBox(height:15),
      //          InkWell(
      //        onTap: () {
      //     Navigator.pushReplacementNamed(context, SignUp.routeName);
      //    },
      // child: Container(
      //   margin: const EdgeInsets.only(bottom: 40),
      //   child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children:  <Widget>[
      //         Text(
      //           'Don\'t have an Account?',
      //           style: TextStyle(
      //               fontFamily: 'Core Pro',
      //               fontSize: 13.0.sp,
      //               fontWeight: FontWeight.w400,
      //               color:const Color(0xFF383744)),
      //         ),
      //         const SizedBox(width:3),
      //         Text(
      //           'Sign Up',
      //           style: TextStyle(
      //               fontFamily: 'Core Pro',
      //               fontSize: 13.0.sp,
      //               fontWeight: FontWeight.w400,
      //               color: kPrimaryColor,
      //               decoration: TextDecoration.underline),
      //         )
      //       ]),
    //   ),
    // )
              ],),
            ),
          )),
      ),
    );
  }

  TextFormField _buildPasswordField() {
    return TextFormField(
      obscureText: _isVisible ? false : true,
      controller: _passwordController,
      onSaved: (newValue) => _passwordController.text = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) return;
        setState(
          () {
            if (value.isNotEmpty) {
              password = true;
            } else {
              password = false;
            }
          },
        );
      },
      validator: (value) {
        String? errorMessage;
        if (value!.isEmpty) {
          errorMessage = "\u26A0 Please Enter your password";
        } else if (value.length < 8) {
          errorMessage = "\u26A0 Password must contain at least 8 characters";
        }
        return errorMessage;
      },
      decoration: InputDecoration(
        // floatingLabelStyle: TextStyle(color:const Color(0xFF828282)),
        contentPadding:const EdgeInsets.only(left:10,bottom: 47 / 2),
        errorStyle: const TextStyle(
            fontFamily: 'Core Pro',
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.red),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () => passwordStatus(),
          icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }

}