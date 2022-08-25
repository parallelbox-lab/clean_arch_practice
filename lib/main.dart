import 'package:flutter/material.dart';
import 'package:pharmserv/presentation/screens/splash/splash.dart';
import 'package:pharmserv/routes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        // primarySwatch: Color,
      ),
      // home: const Splash(),
       initialRoute: Splash.routeName,
       routes: routes,
    );
  });
}}
