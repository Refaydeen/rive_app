import 'package:flutter/material.dart';
import 'package:leads/screens/login_screen.dart';
import 'package:sidebarx/sidebarx.dart';
import '../screens/dashBoard_screen.dart';
import '../screens/lead_screen.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key, required SidebarXController controller})
      : _controller = controller,
        super(key: key);
  final SidebarXController _controller;

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/logo.png',
        height: 65,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 70),
        child: SidebarX(
          animationDuration: Duration(milliseconds: 600),
          controller: widget._controller,
          theme: SidebarXTheme(
            hoverColor: Color(0xffF7F6FD),
            itemTextPadding: const EdgeInsets.only(left: 20),
            selectedItemTextPadding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15.0,
                    offset: Offset(0, 2),
                  )
                ]),
            itemDecoration: BoxDecoration(color: Colors.white),
            textStyle: TextStyle(
              color: Color(0xFF797689),
            ),
            iconTheme: IconThemeData(color: Color(0xff797689)),
            selectedIconTheme: IconThemeData(color: Color(0xff7E6EF2)),
            selectedTextStyle: TextStyle(color: Color(0xff7E6EF2)),
            selectedItemDecoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 5,
                  color: Color(0xff7E6EF2),
                ),
              ),
              color: Color(0xFFF7F6FD),
            ),
          ),
          extendedTheme: SidebarXTheme(
            width: 165,
          ),
          items: [
            SidebarXItem(
              icon: Icons.home_outlined,
              label: 'Dashboard',
              onTap: () {
                Navigator.pushNamed(context, DashBoardScreen.routeName);
              },
            ),
            SidebarXItem(
              icon: Icons.people_alt_outlined,
              label: 'Leads',
              onTap: () {
                Navigator.pushNamed(context, LeadScreen.routeName);
              },
            ),
            SidebarXItem(

              icon: Icons.logout_outlined,
              label: 'Logout',
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),

          ],

        ),
      ),
    ]);
  }
}
