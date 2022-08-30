import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmserv/presentation/cubits/auths/login/login_cubit.dart';
import 'package:pharmserv/presentation/screens/bottom_navigation.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/common.dart';
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
  final _scaffoldState = GlobalKey<ScaffoldState>();
  bool email = false;
   bool password = false;
  bool _isVisible = false;
  bool _submitted = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _value = false;
  void passwordStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _submitLogin(){
    // if (emailController.text.isEmpty) {
    //   toast('enter your email');
    //   return;
    // }
    // if (_passwordController.text.isEmpty) {
    //   toast('enter your password');
    //   return;
    // }
    BlocProvider.of<LoginCubit>(context).signInSubmit(
      email: emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    key:_scaffoldState,
      body: BlocConsumer<LoginCubit,LoginState>(
        listener: (context,loginState) {
        if (loginState is LoginSuccess) {
            // BlocProvider.of<AuthCubit>(context).loggedIn();
          }
        if (loginState is LoginFailure){
          print(LoginFailure().toString());
          snackBarNetwork(msg: "wrong email please check",scaffoldState: _scaffoldState);
        }

        },
        builder: (context, loginState){
      //  if (loginState is LoginSuccess) {
        return SafeArea(
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
                  submitted:_submitted ,
                  validationText: "Email Address",
                  controller: emailController,
                  onChanged: (value) {
                  value = emailController.text;               
                  setState(
                    () {
                    if (value!.isNotEmpty||!emailValidatorRegExp.hasMatch(value)) {
                      email = true;
                      print("hello");
                    } else {
                      email = false;
                    }
                      },
                    );   
                            
                },
                  validFunction: (value){
                    String? errorMessage;
                      if (value!.isEmpty) {
                        errorMessage = "\u26A0 email is required";
                      } else if (!emailValidatorRegExp.hasMatch(value)) {
                          errorMessage = "\u26A0 Invalid Email Address";
                      }
                    return errorMessage;
                  },
                ),
                const SizedBox(height:15),
                CustomText(text:"Password", size: 12.sp,color:const Color(0xFF828282),weight:FontWeight.w400),
                Container(
                height:48,
                margin: const EdgeInsets.only(top: 15.0),
                child: _buildPasswordField(),
                ),    
                const SizedBox(height:10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [         
                  // CustomText(text: "Remember Me",size:12.sp),
                  Flexible(
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
                    color: email == false || password == false ? kValidationColor :kPrimaryColor,
                    text:loginState is LoginLoading ? "Loading" : "Login" ,
                    press: email == false || password == false ? null : (){
                      // Navigator.pushNamedAndRemoveUntil(context, BottomNavigation.routeName, (route) => false);
                    setState(() => _submitted = true);
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // setState(() => isLoading = true);
                      _submitLogin();
                    }
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
          );

            // return BlocBuilder<AuthCubit, AuthState>(
            //   builder: (context, authState) {
            //     if (authState is Authenticated) {
            //       return HomePage(uid: authState.uid,);
            //     } else {
            //       print("Unauthenticsted");
            //       return _bodyWidget();
            //     }
            //   },
            // );
          }
        // },
      ),
    );
  }
   
  TextFormField _buildPasswordField() {
    return TextFormField(
      obscureText: _isVisible ? false : true,
      controller: _passwordController,
      // onSaved: (newValue) =>  newValue!,
      onChanged: (value) {
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