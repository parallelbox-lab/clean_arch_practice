import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/payment_status/payment_status.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/button_widgets2.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:pharmserv/presentation/widgets/form_field.dart';
import 'package:pharmserv/presentation/widgets/success_popup.dart';
import 'package:sizer/sizer.dart';

class AddOrderFields extends StatefulWidget {
  const AddOrderFields({ Key? key }) : super(key: key);

  @override
  State<AddOrderFields> createState() => _AddOrderFieldsState();
}

class _AddOrderFieldsState extends State<AddOrderFields> {
List<String> productName = [
  "Distributors",
  "Wholesalers",
  "Retail Pharmacies",
  "Hospitals",
  "PPMVS"
 ];
 TextEditingController productUnitPrice = TextEditingController();
 TextEditingController salesQuantityController = TextEditingController();
 bool salesQuantity = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(height:15),
        CustomText(text:"Input Product Name", size: 12.sp,color:const Color(0xFF828282)),
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
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                ),
                items: productName.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
              const SizedBox(height:15),
        TextFieldC(
          controller: productUnitPrice,
          validationText: "Composition",
        ),
        const SizedBox(height:15),
        TextFieldC(
          controller: productUnitPrice,
          validationText: "Product Unit Price",
        ),
       const SizedBox(height:15),
        CustomText(text:"Sales Quantity", size: 12.sp,color:const Color(0xFF828282)),
        SizedBox(
          height: 58,
           child: Row(
             children: [
               Expanded(
                 child: TextFormField(
                  keyboardType: TextInputType.text,
                  // autovalidateMode: _submitted
                  //     ? AutovalidateMode.onUserInteraction
                  //     : AutovalidateMode.disabled,
                  controller:  salesQuantityController,
                  onChanged: (value) {
                    value =  salesQuantityController.text;
                    setState(
                      () {
                        if (value.isNotEmpty) {
                          salesQuantity = true;
                        } else {
                          salesQuantity = false;
                        }
                      },
                    );
                  },
                  onSaved: (value) {
                    value = salesQuantityController.text;
                  },
                  validator: (value) {
                    String? errorMessage;
                    if (value!.isEmpty) {
                      errorMessage = "\u26A0 Sales Quantity is required";
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
              const SizedBox(width:5),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5

                  ),
                 borderRadius:const BorderRadius.only(
                    topLeft:Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.remove)),
              ),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5

                  ),
                 borderRadius:const BorderRadius.only(
                    topRight:Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.add)),
              )
             ],
           ),),
           const SizedBox(height:15),
        CustomText(text:"Free Sample Quantity", size: 12.sp,color:const Color(0xFF828282)),
        SizedBox(
          height: 58,
           child: Row(
             children: [
               Expanded(
                 child: TextFormField(
                  keyboardType: TextInputType.text,
                  // autovalidateMode: _submitted
                  //     ? AutovalidateMode.onUserInteraction
                  //     : AutovalidateMode.disabled,
                  controller:  salesQuantityController,
                  onChanged: (value) {
                    value =  salesQuantityController.text;
                    setState(
                      () {
                        if (value.isNotEmpty) {
                          salesQuantity = true;
                        } else {
                          salesQuantity = false;
                        }
                      },
                    );
                  },
                  onSaved: (value) {
                    value = salesQuantityController.text;
                  },
                  validator: (value) {
                    String? errorMessage;
                    if (value!.isEmpty) {
                      errorMessage = "\u26A0 Free Sample Quantity is required";
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
              const SizedBox(width:5),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5

                  ),
                   borderRadius:const BorderRadius.only(
                    topLeft:Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.remove)),
              ),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5

                  ),
                 borderRadius:const BorderRadius.only(
                    topRight:Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.add)),
              )
             ],
           ),),
         const SizedBox(height:15),
        CustomText(text:"Return Quantity", size: 12.sp,color:const Color(0xFF828282)),
        SizedBox(
          height: 58,
           child: Row(
             children: [
               Expanded(
                 child: TextFormField(
                  keyboardType: TextInputType.text,
                  // autovalidateMode: _submitted
                  //     ? AutovalidateMode.onUserInteraction
                  //     : AutovalidateMode.disabled,
                  controller:  salesQuantityController,
                  onChanged: (value) {
                    value =  salesQuantityController.text;
                    setState(
                      () {
                        if (value.isNotEmpty) {
                          salesQuantity = true;
                        } else {
                          salesQuantity = false;
                        }
                      },
                    );
                  },
                  onSaved: (value) {
                    value = salesQuantityController.text;
                  },
                  validator: (value) {
                    String? errorMessage;
                    if (value!.isEmpty) {
                      errorMessage = "\u26A0 Return Quantity is required";
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
              const SizedBox(width:5),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5

                  ),
                   borderRadius:const BorderRadius.only(
                    topLeft:Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.remove)),
              ),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5

                  ),
                   borderRadius:const BorderRadius.only(
                    topRight:Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.add)),
              )
             ],
           ),),
           const SizedBox(height:15),
        CustomText(text:"Replace Quantity", size: 12.sp,color:const Color(0xFF828282)),
        SizedBox(
          height: 58,
           child: Row(
             children: [
               Expanded(
                 child: TextFormField(
                  keyboardType: TextInputType.text,
                  // autovalidateMode: _submitted
                  //     ? AutovalidateMode.onUserInteraction
                  //     : AutovalidateMode.disabled,
                  controller:  salesQuantityController,
                  onChanged: (value) {
                    value =  salesQuantityController.text;
                    setState(
                      () {
                        if (value.isNotEmpty) {
                          salesQuantity = true;
                        } else {
                          salesQuantity = false;
                        }
                      },
                    );
                  },
                  onSaved: (value) {
                    value = salesQuantityController.text;
                  },
                  validator: (value) {
                    String? errorMessage;
                    if (value!.isEmpty) {
                      errorMessage = "\u26A0 Sales Quantity is required";
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
              const SizedBox(width:5),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5

                  ),
                 borderRadius:const BorderRadius.only(
                    topLeft:Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.remove)),
              ),
              Container(
                height:48,
                padding:const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border:Border.all(
                    color: Colors.grey,
                    width:0.5
                  ),
                  borderRadius:const BorderRadius.only(
                    topRight:Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  )
                ),
                child: IconButton(padding: EdgeInsets.zero,
                onPressed: (){}, icon:const Icon(Icons.add)),
              ),
             ],
           ),),
            const SizedBox(height:15),
        TextFieldC(
          controller: productUnitPrice,
          validationText: "Percentage Discount",
        ),
           const SizedBox(height:10),
           Padding(
             padding:const EdgeInsets.all(7.0),
             child: ButtonWidget2(text: "save",
             press:(){
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (BuildContext context) {
                  return const SuccessPopup(
                    text: "Order Added Successfully",

                  );
                });
             },text2: "Continue",press2:() => Navigator.pushNamed(context, PaymentStatus.routeName)),
           )
          
        ],
      ),
      
    );
  }
DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));

}