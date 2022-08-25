import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/auth/login/login.dart';
import 'package:pharmserv/presentation/utils/constants.dart';
import 'package:pharmserv/presentation/widgets/button_widget.dart';
import 'package:pharmserv/presentation/widgets/custom_text.dart';
import 'package:sizer/sizer.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);
  static String routeName = "/onboarding-screen";
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();
  int _currentPage = 0;
  final List<Map<String, String>> _onboardingData = [
    {
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut morbi mauris sit mattis. "
    },
    {
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut morbi mauris sit mattis. "
    },
    {
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut morbi mauris sit mattis. "
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Flexible(
            flex: 3,
            child: PageView.builder(
                controller: _controller,
                itemCount: _onboardingData.length,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemBuilder: (context, i) {
                  return Padding(
                    padding:kPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: CustomText(
                          color: Colors.white,
                          text: _onboardingData[i]["text"],
                          size: 14.sp,
                          weight: FontWeight.w500,
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ]),
                  );
                })),
        // const Spacer(),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    _onboardingData.length, (index) => _buildDots(index)),
              ),
              // const SizedBox(height:15),
              const Spacer(),
              Visibility(
                visible:  _currentPage + 1 == _onboardingData.length
                      ? true:false,
                child: Padding(
                  padding: kPadding,
                  child: ButtonWidget(
                    color: Colors.white,
                    textColor: Colors.black,
                    press: () {
                       Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const SignIn()));                  
                    },
                    text: "Get Started"
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ])
    );
  }

  _buildDots(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
          borderRadius:const BorderRadius.all(Radius.circular(50)),
          color:  _currentPage == index ? kSecondaryColor : Colors.white),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }
}
