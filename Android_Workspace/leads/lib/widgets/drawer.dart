import 'package:flutter/material.dart';
import 'package:leads/screens/login_screen.dart';
import 'package:sidebarx/sidebarx.dart';
import '../screens/dashBoard_screen.dart';
import '../screens/lead_screen.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key,required SidebarXController controller}) : _controller=controller, super(key: key);
  final SidebarXController _controller;

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: SidebarX(
        controller: widget._controller,
        theme: const SidebarXTheme(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(18),bottomRight: Radius.circular(18))
            ),
            textStyle: TextStyle(color: Colors.black)
        ),
        extendedTheme: SidebarXTheme(
            width: 165
        ),
        items: [
          SidebarXItem(icon: Icons.home_outlined,label: 'Dashboard',
            onTap: (){
              Navigator.pushNamed(context, DashBoardScreen.routeName);
            },
          ),
          SidebarXItem(icon: Icons.people_alt_outlined,label: 'Leads',
            onTap: () {
              Navigator.pushNamed(context, LeadScreen.routeName);
            },
          ),
          SidebarXItem(icon: Icons.logout_outlined,label: 'Logout',
              onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
          },
          ),
        ],
      ),
    );
  }
}