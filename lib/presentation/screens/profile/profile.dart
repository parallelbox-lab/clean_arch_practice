import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/profile/widgest/profile_form.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  bool drawerCanOpen = true;
   GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldkey,
      drawer: _navBar(context),
      body:SafeArea(child:
       SingleChildScrollView(
        child:Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          _header(drawerCanOpen, scaffoldkey),
          const SizedBox(height:15),
          const Center(child:ProfileForm())
          ])       
    ))));
  }

   _header(bool drawerCanOpen, GlobalKey<ScaffoldState> scaffoldkey) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: (){
                if (drawerCanOpen) {
                  scaffoldkey.currentState!.openDrawer();
                }
                }, icon:Image.asset("assets/icons/menu.png")),
                const SizedBox(height:8),
                CustomText(text: "My Profile",size:16.sp,weight:FontWeight.bold)
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