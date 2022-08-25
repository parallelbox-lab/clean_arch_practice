import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:pharmserv/presentation/widgets/form_field.dart';
import 'package:sizer/sizer.dart';

class CustomerForm extends StatefulWidget {
  const CustomerForm({ Key? key }) : super(key: key);

  @override
  State<CustomerForm> createState() => _CustomerFormState();
}

class _CustomerFormState extends State<CustomerForm> {
  TextEditingController customerNameController = TextEditingController();
  TextEditingController streetAddressController  = TextEditingController();
  TextEditingController telephoneController  = TextEditingController();
  TextEditingController customerEmailController  = TextEditingController();
 List<String> tierList = [
  "Distributors",
  "Wholesalers",
  "Retail Pharmacies",
  "Hospitals",
  "PPMVS"
 ];
 

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        TextFieldC(
         controller: customerNameController,
         validationText: "Customer Name",
        ),
        const SizedBox(height:15),
        CustomText(text:"Customer Tier", size: 12.sp,color:const Color(0xFF828282)),
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
                items: tierList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
         const SizedBox(height:15),
        CustomText(text:"Premises License Number", size: 12.sp,color:const Color(0xFF828282)),
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
                items: tierList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
         const SizedBox(height:15),
        CustomText(text:"State", size: 12.sp,color:const Color(0xFF828282)),
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
                items: tierList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
         const SizedBox(height:15),
        CustomText(text:"Local Government", size: 12.sp,color:const Color(0xFF828282)),
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
                items: tierList.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() {             
                }),
              ),
            )),
        const SizedBox(height:15),
         TextFieldC(
         controller: streetAddressController,
         validationText: "Street Address",
        ),
         const SizedBox(height:15),
         TextFieldC(
         controller: telephoneController,
         validationText: "Telephone Number",
        ),
        const SizedBox(height:15),
         TextFieldC(
         controller: customerEmailController,
         validationText: "Customer Email",
        ),
      const SizedBox(height:15),
       Padding(
        padding:const EdgeInsets.all(15.0),
        child: ButtonWidget(text: "Save",press:(){}),
      )
      ],),
    );
  }
 DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));
}