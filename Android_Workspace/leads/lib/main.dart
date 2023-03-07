import 'package:flutter/material.dart';
import 'package:leads/screens/login_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:leads/responsive.dart';
import 'package:leads/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(
      child,
      // maxWidth: 1500,
      // minWidth: 480,
      defaultScale: true,
      breakpoints: [
        ResponsiveBreakpoint.resize(350, name: MOBILE),
        ResponsiveBreakpoint.autoScale(600, name: TABLET),
        ResponsiveBreakpoint.resize(800, name: DESKTOP),
        ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
      ],

    ),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}

