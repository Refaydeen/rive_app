import 'package:flutter/material.dart';
import 'package:leads/widgets/dropdown_list.dart';
import 'package:leads/widgets/lead_status.dart';
import 'package:leads/widgets/managedby.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
                height: 25,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border:
                  Border.all(color: Colors.blue.shade300, width: 1.5),
                ),
                child: DropDown()
            ),
            SizedBox(
              height: 10,
            ),
            AspectRatio(
              aspectRatio: 1,
              child: GridView.builder(
                itemCount: 1,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
                itemBuilder: (context, index) {
                return Padding(padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4.5)),
                              gradient: LinearGradient(
                                colors: [Color(0XFF6552C5),Color(0XFF9787E6)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            height: 100,
                            width: 170,
                            child: Row(
                              children: [
                                Text('Leads Converted',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4.5)),
                              gradient: LinearGradient(
                                colors: [Color(0XFFF9532B),Color(0XFFF5A52B)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            height: 100,
                            width: 170,
                            child: Row(
                              children: [

                                Text('New Leads',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4.5)),
                              gradient: LinearGradient(
                                colors: [Color(0XFF22976E),Color(0XFF36D28E)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            height: 100,
                            width: 170,
                            child: Row(
                              children: [
                                Text('Active Leads',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4.5)),
                              gradient: LinearGradient(
                                colors: [Color(0XFFAB0000),Color(0XFFF52B2B)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            height: 100,
                            width: 170,
                            child: Row(
                              children: [
                                Text('Inactive Leads',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                );
              },),
            ),
            SizedBox(
              width: 10,
            ),
            LeadStatusMobile(),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 10,
            ),
            ManagedByMobile()
          ],
        ),
      ),
    );
  }
}
