import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/auth/login/login.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:pharmserv/presentation/widgets/form_field.dart';
import 'package:sizer/sizer.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);
  static String routeName = "/sign-up";
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
   final _formKey = GlobalKey<FormState>();
   bool password = false;
  bool conPassword = false;
  bool _isVisible = false;
  bool _conPassIsVisible = false;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void passwordStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void conPasswordStatus() {
    setState(() {
      _conPassIsVisible = !_conPassIsVisible;
    });
  }
 List<String> companiesNameList = [
  "GE Healthcare",
  "JohnsonJohnson",
  "GSK",
  ""
 ];
 List<String> tierList = [
  "Distributors",
  "Wholesalers",
  "Retail Pharmacies",
  "Hospitals",
  "PPMVS"
 ];
 
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
               const BackButtonW(text:"Sign Up"),
               const SizedBox(height:25),
               TextFieldC(
               validationText: "FirstName",
               controller: firstNameController,
               onChanged: (value){},
               ),
               const SizedBox(height:15),
               TextFieldC(
               validationText: "Last Name",
               controller: lastNameController,
               onChanged: (value){},
               ),
              const SizedBox(height:15),
              CustomText(text:"Company Name", size: 12.sp,color:const Color(0xFF828282)),
              Container(
              margin: const EdgeInsets.only(top: 15.0),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 48,
             decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFD7D9DA),
                width: 2,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                iconSize: 36,
                isExpanded: true,     
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                items: companiesNameList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
              const SizedBox(height:15),
            EmailTextField(
              validationText: "Company Email",
              controller: emailController,
              onChanged: (value){},
            ),
            const SizedBox(height:15),
              CustomText(text:"Tier", size: 12.sp,color:const Color(0xFF828282)),
              Container(
              margin: const EdgeInsets.only(top: 15.0),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 48,
             decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFD7D9DA),
                width: 2,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                
                iconSize: 36,
                isExpanded: true,     
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                items: tierList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
            const SizedBox(height:15),
            CustomText(text:"Password", size: 12.sp,color:const Color(0xFF828282),weight:FontWeight.w400),
            Container(
            height:48,
            margin: const EdgeInsets.only(top: 15.0),
            child: _buildPasswordField(),
            ),
            const SizedBox(height:15),
            CustomText(text:"Confirm Password", size: 12.sp,color:const Color(0xFF828282),weight:FontWeight.w400,),
            Container(
              height:48,
              margin: const EdgeInsets.only(top: 15.0),
              child: _buildConfirmPasswordFormField(),
            ),
              const SizedBox(height:15),
             TextFieldC(
               validationText: "State",
               controller: lastNameController,
               onChanged: (value){},
               ),
              const SizedBox(height:15),
              TextFieldC(
               validationText: "Local Government",
               controller: lastNameController,
               onChanged: (value){},
               ),
              const SizedBox(height:26),
              ButtonWidget(
                text: "Sign Up",
                press: (){}
                ,
              ),
              const SizedBox(height:15),
               InkWell(
      onTap: () {
        Navigator.pushNamed(context, SignIn.routeName);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 40),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  <Widget>[
              Text(
                'Already have an Account?',
                style: TextStyle(
                    fontFamily: 'Core Pro',
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w400,
                    color:const Color(0xFF383744)),
              ),
              const SizedBox(width:3),
              Text(
                'Log in',
                style: TextStyle(
                    fontFamily: 'Core Pro',
                    fontSize: 13.0.sp,
                    fontWeight: FontWeight.w400,
                    color: kPrimaryColor,
                    decoration: TextDecoration.underline),
              )
            ]),
      ),
    )
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

  TextFormField _buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: _conPassIsVisible ? false : true,
      controller: _confirmPasswordController,
      onSaved: (value) => _confirmPasswordController.text = value!,
      onChanged: (value) {
        setState(
          () {
            if (value.isNotEmpty) {
              conPassword = true;
            } else if (value.isNotEmpty &&
                _passwordController.text ==
                    _confirmPasswordController.text) {
              conPassword = true;
            } else {
              conPassword = false;
            }
          },
        );
      },
      validator: (value) {
        String? errorMessage;
        if (value!.isEmpty) {
          errorMessage = "Confirm password cannot be empty";
        } else if ((_passwordController.text != value)) {
          errorMessage = "Password does not match";
        }
        return errorMessage;
      },
      decoration: InputDecoration(
       contentPadding:const EdgeInsets.only(left:10,bottom: 47 / 2),
        suffixIcon: IconButton(
          onPressed: () => conPasswordStatus(),
          icon:
              Icon(_conPassIsVisible ? Icons.visibility : Icons.visibility_off),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
    );
  }
// converting to list
  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));
}