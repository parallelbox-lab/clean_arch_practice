import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pharmserv/presentation/screens/customers/all_customers/all_customers.dart';
import 'package:pharmserv/presentation/screens/dashboard/dashboard.dart';
import 'package:pharmserv/presentation/screens/orders/all_orders/all_orders.dart';
import 'package:pharmserv/presentation/screens/profile/profile.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:sizer/sizer.dart';

class BottomNavigation extends StatefulWidget {
 const BottomNavigation(
      {Key? key, })
      : super(key: key);
  static String routeName = "/navigation";

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late List<Widget> _pages;
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    _selectedIndex = index;
  }

  void _itemTapped(int _selectedIndex) {
    setState(
      () {
        _pageController.jumpToPage(_selectedIndex);
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
    _pages = [
      const Dashboard(),
      const AllCustomers(),
     const AllOrders(),
      const Profile()

      // const CampaignScreen(),
      // const ChallengeScreen(),
      // const CommunityScreen()
    ];
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
       bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor:
                 kPrimaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 3,
            selectedLabelStyle:GoogleFonts.poppins(
               textStyle: TextStyle(
                fontSize: 10.0.sp,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal)),
            unselectedLabelStyle:GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 10.0.sp,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal)),
            onTap: _itemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(top:10,bottom: 5),
                    child: Image.asset(
                      'assets/icons/Home.png',
                      width: 25,
                      height: 25,
                      color: _selectedIndex == 0
                              ? kPrimaryColor
                              : Colors.grey
                          // : _selectedIndex == 0
                          //     ? Colors.black
                          //     : lightGrey,
                    )),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(top:10,bottom: 5),
                    child: Image.asset('assets/icons/profile-2user.png',
                      color: _selectedIndex == 1
                                ? kPrimaryColor
                                : Colors.grey,                         
                        width: 25,
                        height: 25)),
                label: 'Customers',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(top:10,bottom: 5),
                    child: Image.asset('assets/icons/note.png',
                        color: _selectedIndex == 2
                                ? kPrimaryColor
                                : Colors.grey,
                        width: 25,
                        height: 25)),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    margin: const EdgeInsets.only(top:10,bottom: 5),
                    child: Image.asset(
                      'assets/icons/user.png',
                      width: 25,
                      height: 25,
                      color: _selectedIndex == 3
                              ? kPrimaryColor
                              : Colors.grey,
                    )),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed),
    );
  }
  
}
