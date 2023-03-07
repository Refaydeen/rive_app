import 'package:flutter/material.dart';

import '../forms/client_page.dart';
import '../forms/lead_page.dart';
import '../forms/management_page.dart';
import 'create_leadButton.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                TextButton.icon(onPressed: (){
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                    icon:Icon(Icons.leaderboard,color: Colors.black,size: 18),
                    label:Text('Lead',style: TextStyle(color: Colors.black),)),

                TextButton.icon(onPressed: (){
                         setState(() {
                         _selectedIndex = 1;
                  });
                },
                        icon:Icon(Icons.person_outline_sharp,color: Colors.black,size: 18),
                         label:Text('Client',style: TextStyle(color: Colors.black))),

                TextButton.icon(onPressed: (){
                  setState(() {
                    _selectedIndex = 2;

                  });
                },
                    icon:Icon(Icons.domain_add,color: Colors.black,size: 18),
                    label:Text('Management',style: TextStyle(color: Colors.black))),

              ],
            ),
          ),
          Expanded(
            child: StatefulBuilder(
              key: UniqueKey(),
              builder: (BuildContext context, StateSetter setState) {
                return IndexedStack(
                  index: _selectedIndex,
                  children: [
                    LeadPage(onPress: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },),
                    ClientPage(onPress: () {

                      setState(() {
                        _selectedIndex = 2;
                      });
                    },),
                    ManagementPage(onPress: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },)
                  ],
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}
