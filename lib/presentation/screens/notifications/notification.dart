import "package:flutter/material.dart";
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/back_button.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';
class AddOrders extends StatelessWidget {
  const AddOrders({ Key? key }) : super(key: key);
 static String routeName = "/add-orders";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(child:Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const BackButtonW(text: "Notifications"),
             const SizedBox(height: 15,),
             Row(
               children: [
                 CustomText(text: "New",weight:FontWeight.bold,size:13.sp),
                 Container(
                  padding:const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color:Colors.grey,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: CustomText(text: "8",weight:FontWeight.bold,size:13.sp)),
               ],
             ),
             const SizedBox(width: 8,),
                ListView.builder(itemBuilder: ((context, index) {
                  return ListTile(
                    leading:Image.asset("assets/icons/image.png",width: 100,
                    
                  ),
                  title: CustomText(text: "Dear Ekiyee,you have ",size:11.sp,weight:FontWeight.bold),
                  subtitle: Row(
                    children: [
                      CustomText(text: "12/07/22",size:10.sp),
                      const SizedBox(width:5),
                      CustomText(text: "1:35am",size:10.sp)
                    ],
                    
                  ),
                  trailing: IconButton(icon:const Icon(Icons.delete), onPressed: (){},),
                  );
                })),
              const SizedBox(height:10),
               Row(
               children: [
                 CustomText(text: "Earlier",weight:FontWeight.bold,size:13.sp),
                 Container(
                  padding:const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color:Colors.grey,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: CustomText(text: "8",weight:FontWeight.bold,size:13.sp)),
               ],
             ),
             const SizedBox(width: 8,),
                ListView.builder(itemBuilder: ((context, index) {
                  return ListTile(
                    leading:Image.asset("assets/icons/image.png",width: 100,
                    
                  ),
                  title: CustomText(text: "Dear Ekiyee,you have ",size:11.sp,weight:FontWeight.bold),
                  subtitle: Row(
                    children: [
                      CustomText(text: "12/07/22",size:10.sp),
                      const SizedBox(width:5),
                      CustomText(text: "1:35am",size:10.sp)
                    ],
                    
                  ),
                  trailing: IconButton(icon:const Icon(Icons.delete), onPressed: (){},),
                  );
                }))

            ])))
    )
    );
  }
}