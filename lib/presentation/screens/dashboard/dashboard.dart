import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({ Key? key }) : super(key: key);
  static String routeName = "/dashboard";
  
  @override
  Widget build(BuildContext context) {
  bool drawerCanOpen = true;
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key:scaffoldkey,
      drawer:_navBar(context),
      body:SafeArea(
        child: SingleChildScrollView(
        child: Padding(
          padding: kPadding,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(drawerCanOpen, scaffoldkey),
              const SizedBox(height:10),
              CustomText(text: "Hi, ABC Phamacy",size:14.sp,weight:FontWeight.w600),
              CustomText(text: "Welcome Back",size:14.sp,weight:FontWeight.w400),
              const SizedBox(height:25),
             
            // const SizedBox(height:15),
            //   Container(
            //     padding: kPadding,
            //     decoration:const BoxDecoration(
            //       color:Colors.white,
            //     borderRadius: BorderRadius.all(Radius.circular(15))
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             CustomText(text: "Total reviews",size:16.sp,color:const Color(0xff444444),weight:FontWeight.w500)
            //           ],
            //         ),
            //         const SizedBox(height:30),
            //          Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Column(
            //               children: [
            //                 CustomText(text: "246K",size:25.sp,weight:FontWeight.bold),
            //                 Row(
            //                   children: [
            //                     Image.asset("assets/icons/arrow_down.png",width:25,height:25),
            //                     CustomText(text: "15.3%",size:20.sp,weight:FontWeight.bold,color:Colors.red),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           Image.asset("assets/icons/Group 23.png",width:150)
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // const SizedBox(height:15),
              // Container(
              //   padding: kPadding,
              //   decoration:const BoxDecoration(
              //     color:Colors.white,
              //   borderRadius: BorderRadius.all(Radius.circular(15))
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           CustomText(text: "Total reviews",size:16.sp,color:const Color(0xff444444),weight:FontWeight.w500)
              //         ],
              //       ),
              //       const SizedBox(height:30),
              //        Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           Column(
              //             children: [
              //               CustomText(text: "246K",size:25.sp,weight:FontWeight.bold),
              //               Row(
              //                 children: [
              //                   Image.asset("assets/icons/arrow_down.png",width:25,height:25),
              //                   CustomText(text: "15.3%",size:20.sp,weight:FontWeight.bold,color:Colors.red),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         Image.asset("assets/icons/Group 23.png",width:150)
              //         ],
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(height:22),
              Padding(
                padding: kPadding/3,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: "Activities",size: 16.sp,weight: FontWeight.w600,),
                    CustomText(text: "Outcomes",size:16.sp,weight: FontWeight.w600),
                  ],
                ),
              ),
              const SizedBox(height: 6,),
              ListView.separated(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                return Padding(
                  padding: kPadding/3,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: const[
                    CustomText(text: "Customers",),
                    CustomText(text: "50",),
                  ],),
                );
              }), 
               separatorBuilder: (context, index) =>
                              const Divider(thickness: 1),
              itemCount: 5)              
            ],
          ),
        ),
        ),
      )
    );
  }

    _header(bool drawerCanOpen, GlobalKey<ScaffoldState> scaffoldkey) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                padding: EdgeInsets.zero,
                  onPressed: (){
                if (drawerCanOpen) {
                  scaffoldkey.currentState!.openDrawer();
                }
                }, icon:Image.asset("assets/icons/menu.png")),
                IconButton(onPressed: (){}, icon: Image.asset("assets/icons/notification.png")),
              ],
            );
  }

  SizedBox _navBar(BuildContext context) {
    return SizedBox(
      width:280,
      child: Drawer(
      backgroundColor: kPrimaryColor,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin:  EdgeInsets.zero,
            padding: EdgeInsets.zero,
            decoration:const  BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const  Padding(
                  padding: EdgeInsets.only(left:10.0),
                  child: BackButton(color:Colors.white),
                ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("assets/icons/image.png",width: MediaQuery.of(context).size.width * 0.21,
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "John Mattew",size:14.sp,color:Colors.white,weight:FontWeight.w500),
                      CustomText(text: "View Profile",color:Colors.white,decoration: TextDecoration.underline,size:12.sp)
                   ],
                  )
                ],
               ),
             ],
            ),
          ),
          ListTile(
            leading: Image.asset("assets/icons/Home.png",width: 25,
                    height: 25,color:Colors.white),
            minLeadingWidth: 2,
            title: CustomText(text: "Home",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
           ListTile(
            leading:Image.asset("assets/icons/profile-2user.png",width: 25,
                    height: 25,color:Colors.white),
            minLeadingWidth: 2,
            title: CustomText(text: "Customers",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
         const SizedBox(height:15),
           ListTile(
            leading:Image.asset("assets/icons/receipt-search.png",width: 25,
                    height: 25,),
           minLeadingWidth: 2,
            title: CustomText(text: "Orders",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height:15),
           ListTile(
            leading:Image.asset("assets/icons/Wallet.png",width: 25,
                    height: 25,),
           minLeadingWidth: 2,
            title: CustomText(text: "Payment Status",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height:15),
           ListTile(
            leading:Image.asset("assets/icons/group.png",width: 25,
                    height: 25,),
            minLeadingWidth: 2,
            title: CustomText(text: "Delivery Status",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height:15),
           ListTile(
            leading:Image.asset("assets/icons/note.png",width: 25,
                    height: 25,color:Colors.white),
            minLeadingWidth: 2,
            title: CustomText(text: "Record Sales Activity",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height:15),
           ListTile(
            leading: Image.asset("assets/icons/cil_link.png",width: 25,
                    height: 25,),
            minLeadingWidth: 2,
            title: CustomText(text: "Copy Link",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        SizedBox(height:10.h),
        ListTile(
            leading: Image.asset("assets/icons/cil_link.png",width: 25,
                    height: 25,),
            minLeadingWidth: 2,
            title: CustomText(text: "Sign out",size: 12.sp,color:Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
  ),
    );
  }
}