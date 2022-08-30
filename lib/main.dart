import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmserv/presentation/cubits/auths/forget_password/forget_password_cubit.dart';
import 'package:pharmserv/presentation/cubits/auths/login/login_cubit.dart';
import 'package:pharmserv/presentation/screens/splash/splash.dart';
import 'package:pharmserv/routes.dart';
import 'package:sizer/sizer.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (_) => di.sl<LoginCubit>(),
        ),
        BlocProvider<ForgetPasswordCubit>(
          create: (_) => di.sl<ForgetPasswordCubit>(),
        ),
      ],
        child:MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // is not restarted.
          // primarySwatch: Color,
        ),
          // home: const Splash(),
          initialRoute: Splash.routeName,
          routes: routes,
      )   
    );
  });
}}
