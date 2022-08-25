import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class TextFieldC extends StatefulWidget {
  const TextFieldC ({ Key? key,this.controller,this.onChanged,this.validationText}) : super(key: key);
  final TextEditingController? controller;
  final VoidCallback? onChanged;
  final String? validationText;
  @override
  State<TextFieldC> createState() => _TextFieldCState();
}

class _TextFieldCState extends State<TextFieldC> {
  bool _submitted = false;
  bool? name;
  @override
  
  @override
  Widget build(BuildContext context) {
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        CustomText(text: widget.validationText, size: 12.sp,color:const Color(0xFF828282),weight:FontWeight.w400),
        const SizedBox(height:10),
         SizedBox(
          height: 58,
           child: TextFormField(
            keyboardType: TextInputType.text,
            // autovalidateMode: _submitted
            //     ? AutovalidateMode.onUserInteraction
            //     : AutovalidateMode.disabled,
            controller: widget.controller,
            onChanged: (value) {
              value = widget.controller!.text;
              setState(
                () {
                  if (value.isNotEmpty) {
                    name = true;
                  } else {
                    name = false;
                  }
                },
              );
            },
            onSaved: (value) {
              value = widget.controller!.text;
            },
            validator: (value) {
              String? errorMessage;
              if (value!.isEmpty) {
                errorMessage = "\u26A0 ${widget.validationText} is required";
              } 
              return errorMessage;
            },
            decoration:const InputDecoration(
              floatingLabelStyle: TextStyle(
              ),
            contentPadding: EdgeInsets.only(left:10,bottom: 47 / 2),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
            // onFieldSubmitted: (_) {
            //   FocusScope.of(context).requestFocus(_passwordFocusNode);
            // },
    ),
         ),
       ],
     );
  }


}


class EmailTextField extends StatefulWidget {
  const EmailTextField({ Key? key,this.controller,this.onChanged,this.validationText}) : super(key: key);
  final TextEditingController? controller;
  final VoidCallback? onChanged;
  final String? validationText;
  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  bool _submitted = false;
  bool? name;
  @override
  
  @override
  Widget build(BuildContext context) {
     return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
        CustomText(text: widget.validationText, size: 12.sp,color:const Color(0xFF828282),weight:FontWeight.w400),
        const SizedBox(height:10),
         SizedBox(
          height: 48,
           child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            // autovalidateMode: _submitted
            //     ? AutovalidateMode.onUserInteraction
            //     : AutovalidateMode.disabled,
            controller: widget.controller,
            onChanged: (value) {
              value = widget.controller!.text;
              setState(
                () {
                  if (value.isNotEmpty||!emailValidatorRegExp.hasMatch(value)) {
                    name = true;
                  } else {
                    name = false;
                  }
                },
              );
            },
            onSaved: (value) {
              value = widget.controller!.text;
            },
            validator: (value) {
              String? errorMessage;
              if (value!.isEmpty) {
                errorMessage = "\u26A0 ${widget.validationText} is required";
              } else if (!emailValidatorRegExp.hasMatch(value)) {
                  errorMessage = "\u26A0 Invalid Email Address";
                }
              return errorMessage;
            },
            decoration:const InputDecoration(
              floatingLabelStyle: TextStyle(
              ),
            contentPadding: EdgeInsets.only(left:10,bottom: 47 / 2),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4))),
            ),
            // onFieldSubmitted: (_) {
            //   FocusScope.of(context).requestFocus(_passwordFocusNode);
            // },
    ),
         ),
       ],
     );
  }
}