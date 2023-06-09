import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leads/widgets/navigation_drawer.dart';
import '../widgets/create_leadButton.dart';
import '../widgets/drawer.dart';
import '../widgets/dropdown_list.dart';
import 'package:leads/widgets/cards.dart';
import 'package:leads/widgets/managedby.dart';
import 'package:leads/widgets/lead_status.dart';
import 'package:leads/widgets/pending_propsal.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:leads/responsive.dart';
import 'package:leads/mobile_widgets/mobile_layout.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
  static String routeName = 'DashBoardScreen';
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final _controller = SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer: Padding(
          padding: EdgeInsets.only(top: 70), // Adjust the top padding as needed
          child: Container(
            height: MediaQuery.of(context).size.height /
                0.2, // Subtract the top padding from the screen height
            width: MediaQuery.of(context).size.width * 0.5,
            child: NavigationDrawer(),
          ),
        ),
        body: Responsive(
          mobile: MobileLayout(),
          tablet: Row(
            children: [
              SideBarWidget(controller: _controller),
              Expanded(
                // flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 65,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 25,
                            width: 125,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.blue.shade300, width: 1.5),
                            ),
                            child: DropDown()),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                        CreateLeadButton(
                          name: 'Create Lead',
                          onPress: () {
                            _scaffoldKey.currentState?.openEndDrawer();
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //LEADS,NEW LEADS BOX IS CALLED HERE
                    if (Responsive.isTablet(context)) Cards(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        //MANAGED BY CONTAINER
                        if (Responsive.isTablet(context)) Managedby(),
                        SizedBox(
                          width: 10,
                        ),
                        //LEAD STATUS CONTAINER
                        if (Responsive.isTablet(context)) LeadStatus(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    if (Responsive.isTablet(context)) PendingProposal(),
                  ],
                ),
              ),
            ],
          ),
          desktop: Stack(children: [
            Row(
              children: [
                SideBarWidget(controller: _controller),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  // flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: 30,
                              width: 125,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                                border: Border.all(
                                    color: Color(0xffD5D0FF), width: 1.7),
                              ),
                              child: DropDown()),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.5,
                          ),
                          CreateLeadButton(
                            name: 'Create Lead',
                            onPress: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //LEADS,NEW LEADS BOX IS CALLED HERE
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Cards(),
                            // SizedBox(
                            //   height: 7,
                            // ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                //MANAGED BY CONTAINER
                                Managedby(),
                                SizedBox(
                                  width: 20,
                                  height: 15,
                                ),
                                //LEAD STATUS CONTAINER
                                LeadStatus(),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 12,
                      ),
                      PendingProposal()
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: 145,
                right: 70,
                child: Container(
                  height: 342,
                  width: 490,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15.0,
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Lead Funnel',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: GoogleFonts.notoSans().fontFamily),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 25,
                        width: 300,
                        child: Center(
                            child: Text(
                          'Prospects',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFBB40),
                          border:
                              Border.all(color: Color(0xffFFBB40), width: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      //2
                      Container(
                        height: 25,
                        width: 260,
                        child: Center(
                            child: Text(
                          'Qualified',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff00C7B2),
                          border:
                              Border.all(color: Color(0xff00C7B2), width: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //3
                      Container(
                        height: 25,
                        width: 230,
                        child: Center(
                            child: Text(
                          'Proposals',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFF520D),
                          border:
                              Border.all(color: Color(0xffFF520D), width: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      //4
                      Container(
                        height: 25,
                        width: 200,
                        child: Center(
                            child: Text(
                          'Negotiations',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFE8A11),
                          border:
                              Border.all(color: Color(0xffFE8A11), width: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //5
                      Container(
                        height: 25,
                        width: 170,
                        child: Center(
                            child: Text(
                          'Final Sales',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff93C90F),
                          border:
                              Border.all(color: Color(0xff93C90F), width: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //6
                      Container(
                        height: 25,
                        width: 140,
                        child: Center(
                            child: Text(
                          'Awaiting Acceptance',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff015486),
                          border:
                              Border.all(color: Color(0xff015486), width: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //7
                      Container(
                        height: 25,
                        width: 110,
                        child: Center(
                            child: Text(
                          'Lost',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff00A0DC),
                          border:
                              Border.all(color: Color(0xff00A0DC), width: 1.5),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //7
                      Container(
                        height: 25,
                        width: 90,
                        child: Center(
                            child: Text(
                          'Won',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff009D2C),
                          border:
                              Border.all(color: Color(0xff009D2C), width: 1.5),
                        ),
                      ),
                    ],
                  ),
                ))
          ]),
        ));
  }
}
