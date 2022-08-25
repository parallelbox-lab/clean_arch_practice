import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
class ViewCustomerDetailsForm extends StatefulWidget {
  const ViewCustomerDetailsForm({ Key? key }) : super(key: key);

  @override
  State<ViewCustomerDetailsForm> createState() => _ViewCustomerDetailsFormState();
}

class _ViewCustomerDetailsFormState extends State<ViewCustomerDetailsForm> {
  TextEditingController stateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding/2,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("assets/images/Ellipse 6.png",width:130),
            const SizedBox(height:10),
            CustomText(text: "ABC Pharmacy",size:16.sp,weight:FontWeight.w600),
            CustomText(text: "Precious@gmail.com",size:13.sp,weight:FontWeight.w400),
              const SizedBox(height:28),
             Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height:8),
                        CustomText(text: "State",size:11.sp),
                        TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("assets/icons/edit.png",height:22,width:22,fit:BoxFit.fill),
                              ),
                              border: InputBorder.none,
                              hintText: 'location',
                            suffixIconColor: Colors.grey,
                            focusColor: Colors.grey,

                          ),
                          cursorColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height:15),
                  Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height:8),
                        CustomText(text: "Local Government",size:11.sp),
                        TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("assets/icons/edit.png",height:22,width:22,fit:BoxFit.fill),
                              ),
                              border: InputBorder.none,
                              hintText: 'location',
                            suffixIconColor: Colors.grey,
                            focusColor: Colors.grey,

                          ),
                          cursorColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
            const SizedBox(height:15),
                  Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height:8),
                        CustomText(text: "Street Address",size:11.sp),
                        TextFormField(
                          decoration: InputDecoration(
                              suffixIcon:Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("assets/icons/edit.png",height:22,width:22,fit:BoxFit.fill),
                              ),
                              border: InputBorder.none,
                              hintText: 'location',
                            suffixIconColor: Colors.grey,
                            focusColor: Colors.grey,

                          ),
                          cursorColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                  const SizedBox(height:15),
                  Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height:8),
                        CustomText(text: "Customer Tier",size:11.sp),
                        TextFormField(
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("assets/icons/edit.png",height:22,width:22,fit:BoxFit.fill),
                              ),
                              border: InputBorder.none,
                              hintText: 'location',
                            suffixIconColor: Colors.grey,
                            focusColor: Colors.grey,

                          ),
                          cursorColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height:15),
                  Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height:8),
                        CustomText(text: "Telephone Number",size:11.sp),
                        TextFormField(
                          decoration: InputDecoration(
                              suffixIcon:  Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("assets/icons/edit.png",height:22,width:22,fit:BoxFit.fill),
                              ),
                              border: InputBorder.none,
                              hintText: 'location',
                            suffixIconColor: Colors.grey,
                            focusColor: Colors.grey,

                          ),
                          cursorColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
               
          ],
        ),
      ),
    );
  }
}