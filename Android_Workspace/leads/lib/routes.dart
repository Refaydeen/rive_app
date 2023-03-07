import 'package:flutter/material.dart';
import 'package:leads/screens/lead_screen.dart';
import 'package:leads/screens/login_screen.dart';
import 'package:leads/screens/dashboard_screen.dart';

Map<String, WidgetBuilder>routes = {

   LoginScreen.routeName : (context)=>LoginScreen(),
   DashBoardScreen.routeName :(context)=>DashBoardScreen(),
   LeadScreen.routeName:(context)=>LeadScreen()
};