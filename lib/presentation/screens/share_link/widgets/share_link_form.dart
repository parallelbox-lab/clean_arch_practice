import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
class ShareLinkForm extends StatefulWidget {
  const ShareLinkForm({ Key? key }) : super(key: key);

  @override
  State<ShareLinkForm> createState() => _ShareLinkFormState();
}

class _ShareLinkFormState extends State<ShareLinkForm> {
  TextEditingController shareLinkController = TextEditingController();
  @override
  void initState(){
   super.initState();
   shareLinkController.text = "meet.google.com/vqw-rvhh-vpy";
  }
  bool shareLink = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: "Share Link",size:12.sp,color:const Color(0xFF828282)),
          const SizedBox(height:5),
           SizedBox(
            height: 58,
              child: Row(
              children: [
              Expanded(
                child: TextFormField(
                        readOnly: true,
                        keyboardType: TextInputType.text,
                        // autovalidateMode: _submitted
                        //     ? AutovalidateMode.onUserInteraction
                        //     : AutovalidateMode.disabled,
                        controller: shareLinkController,
                        onChanged: (value) {
                          value = shareLinkController.text;
                          setState(
                            () {
                              if (value.isNotEmpty) {
                                shareLink = true;
                              } else {
                                shareLink = false;
                              }
                            },
                          );
                        },
                        onSaved: (value) {
                          value = shareLinkController.text;
                        },
                        // validator: (value) {
                        //   String? errorMessage;
                        //   // if (value!.isEmpty) {
                        //   //   errorMessage = "\u26A0 ${widget.validationText} is required";
                        //   // } 
                        //   return errorMessage;
                        // },
                        decoration:const InputDecoration(
                          floatingLabelStyle: TextStyle(
                          ),
                        contentPadding: EdgeInsets.only(left:10,bottom: 47 / 2),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(7),
                              bottomLeft: Radius.circular(7)
                              )),
                        ),
                        // onFieldSubmitted: (_) {
                        //   FocusScope.of(context).requestFocus(_passwordFocusNode);
                        // },
                        ),
                     ),
              
                
        SizedBox(
        // width: double.infinity,
        height: 48.0,
        child: TextButton(
          
              style: TextButton.styleFrom(
                // padding: EdgeInsets.zero,
                shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0)
                    ),
                  
                    ),
                primary: Colors.white,
                backgroundColor:kPrimaryColor,
              ),
              onPressed:(){},
              child: Text("Copy",
                  style: GoogleFonts.poppins(
                   textStyle:TextStyle(
                      fontFamily: 'Core Pro',
                      fontSize: 13.0.sp,
                      fontWeight: FontWeight.w500,
                      color:Colors.white)),
                  textAlign: TextAlign.center)))
              ],
          ),
            )
          
        ],
    ),
      
    );
  }
}