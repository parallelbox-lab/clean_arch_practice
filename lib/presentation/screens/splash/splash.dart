import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/onboarding/onboarding.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static String routeName = "/splash";

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int? isViewed;
  void _navigationPage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isViewed = prefs.getInt('onBoard');
    // if (isViewed == null || isViewed == 0) {
    //   Navigator.pushReplacementNamed(context, Onboarding.routeName);
    // } else {
    //   final bool? isLoggedIn = prefs.getBool('loginStatus');
    //   final userToken = prefs.getString("access_token_key");
    //   final userId = prefs.getInt("userId");
    //   // isLoggedIn == null || userToken == null || userId == null
    //   //     ? Navigator.pushReplacementNamed(context, SignUp.routeName)
    //   //     : Navigator.pushReplacementNamed(context, BottomNavigation.routeName);
    //   if (isLoggedIn == null || userToken == null || userId == null) {
    //     Navigator.pushReplacementNamed(context, SignUp.routeName);
    //   } else {
    //     AppProvider.setIsAppHomepageViewed(viewed: true);
    //     Navigator.pushReplacementNamed(context, BottomNavigation.routeName);
    //   }
    // }
     Navigator.pushReplacementNamed(context, OnBoardingScreen.routeName);

  }

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => _navigationPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: SizedBox(
          // height: 30.h,
          child: Image.asset('assets/images/PharmaServ.png',width:200),
        ),
      ),
    );
  }
}
