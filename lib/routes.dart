import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/auth/forget_password/forget_password.dart';
import 'package:pharmserv/presentation/screens/auth/login/login.dart';
import 'package:pharmserv/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:pharmserv/presentation/screens/bottom_navigation.dart';
import 'package:pharmserv/presentation/screens/customers/create_new_customers/create_customer.dart';
import 'package:pharmserv/presentation/screens/customers/view_customer.dart/view_customer.dart';
import 'package:pharmserv/presentation/screens/dashboard/dashboard.dart';
import 'package:pharmserv/presentation/screens/delivery_status/delivery_status.dart';
import 'package:pharmserv/presentation/screens/onboarding/onboarding.dart';
import 'package:pharmserv/presentation/screens/orders/add_orders/add_order.dart';
import 'package:pharmserv/presentation/screens/orders/order_details/order_details.dart';
import 'package:pharmserv/presentation/screens/payment_status/payment_status.dart';
import 'package:pharmserv/presentation/screens/share_link/share_link.dart';
import 'package:pharmserv/presentation/screens/splash/splash.dart';

final Map<String, WidgetBuilder> routes = {
  Splash.routeName: (context) => const Splash(),
  OnBoardingScreen.routeName: (context) =>
      const OnBoardingScreen(), //route for splashscreen
  SignUp.routeName: (context) => const SignUp(),
  SignIn.routeName: (context) => const SignIn(),
  ForgetPassword.routeName: (context) => const ForgetPassword(),
  BottomNavigation.routeName: (context)=> const BottomNavigation(),
  Dashboard.routeName: (context)=> const Dashboard(),
  CreateCustomer.routeName: (context)=> const CreateCustomer(),
  ViewCustomerDetails.routeName: (context)=> const ViewCustomerDetails(),
  AddOrders.routeName:(context) => const AddOrders(),
  OrderDetails.routeName: (context) => const OrderDetails(),
  PaymentStatus.routeName:(context) => const PaymentStatus(),
  DeliveryStatus.routeName:(context) => const DeliveryStatus(),
  ShareLink.routeName:(context) =>  const ShareLink(),
  };