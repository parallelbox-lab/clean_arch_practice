import "package:flutter/material.dart";
import 'package:pharmserv/presentation/screens/customers/create_new_customers/create_customer.dart';
import 'package:pharmserv/presentation/screens/customers/view_customer.dart/view_customer.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';

class AllCustomers extends StatelessWidget {
  const AllCustomers({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      bool drawerCanOpen = true;
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key:scaffoldkey,
       floatingActionButton: FloatingActionButton.extended(
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: kPrimaryColor,
        onPressed: () => Navigator.pushNamed(context, CreateCustomer.routeName),
        icon:const Icon(Icons.add),
        label: const Text("Add Customer"),
      ),
      drawer:_navBar(context),
      body:SafeArea(
        child: SingleChildScrollView(child:Padding(
          padding: kPadding/2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(drawerCanOpen, scaffoldkey),
              const SizedBox(height:8),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: CustomText(text: "Customers",size:17.sp,weight: FontWeight.bold,),
              ),
              CustomScrollView(
                
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
              slivers: <Widget>[
              SliverToBoxAdapter(
                // you could add any widget
              child: ListTile(
              // contentPadding:const EdgeInsets.all(7),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 CustomText(text: "Name",size:14.sp,weight:FontWeight.w700),
                 CustomText(text: "Location",size:14.sp,weight:FontWeight.w700),
                 CustomText(text: "Action",size:14.sp,weight:FontWeight.w700),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => APIDetailView(data[index])),
                    // );
                  },
                  child: ListTile(
                  // contentPadding:const EdgeInsets.all(7),
                    //return  ListTile(
                    
                    title: Column(
                      children: [
                      const Divider(thickness: 2,),
                      const SizedBox(height:10),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(child: CustomText(text:"ABC Pharmacy",size:13.sp,color:kBlackColor,weight:FontWeight.w400)),
                            Flexible(child: CustomText(text:"Lekki",size:13.sp,color:kBlackColor,weight:FontWeight.w400,)),
                            const SizedBox(width:7),
                            InkWell(
                              onTap:(() => Navigator.pushNamed(context, ViewCustomerDetails.routeName)),
                              child: CustomText(text:"View more",size:13.sp,color:kPrimaryColor,decoration: TextDecoration.underline,weight:FontWeight.w400)),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
                   childCount:12,
            ),
          ),
        ],
      ),

            ],
          ),
        ) ,)) ,
    );
  }
   _header(bool drawerCanOpen, GlobalKey<ScaffoldState> scaffoldkey) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                if (drawerCanOpen) {
                  scaffoldkey.currentState!.openDrawer();
                }
                }, icon:Image.asset("assets/icons/menu.png")),
                IconButton(
                  onPressed: (){}, icon: Image.asset("assets/icons/notification.png")),
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