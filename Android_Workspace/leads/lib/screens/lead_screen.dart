import 'dart:math';
import 'package:flutter/material.dart';
import 'package:leads/screens/dashBoard_screen.dart';
import 'package:leads/widgets/dealstage_button.dart';
import 'package:leads/widgets/drawer.dart';
import 'package:leads/responsive.dart';
import 'package:leads/widgets/status_button.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:leads/widgets/navigation_drawer.dart';
import '../widgets/create_leadButton.dart';
import '../widgets/dropdown_list.dart';

class LeadScreen extends StatefulWidget {
  LeadScreen({Key? key}) : super(key: key);
  static String routeName = 'LeadScreen';

  @override
  State<LeadScreen> createState() => _LeadScreenState();
}

class _LeadScreenState extends State<LeadScreen> {
  final DataTableSource _data = MyData();
  String _sortBy = 'ID';
  Color _textColor = Color(0xff7E6EF2);
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final _searchController = TextEditingController();
  bool _hoverID = false;
  bool _hoverOpportunity = false;
  bool _hoverClient = false;
  bool _hoverManagedBy = false;
  bool _hoverETA = false;
  bool _hoverStatus = false;
  bool _DealStage = false;
  bool _Tags = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer: Padding(
          padding: EdgeInsets.only(top: 60), // Adjust the top padding as needed
          child: Container(
            height: MediaQuery.of(context).size.height /
                0.2, // Subtract the top padding from the screen height
            width: MediaQuery.of(context).size.width * 0.5,
            child: NavigationDrawer(),
          ),
        ),
        body: Responsive(
            mobile: Container(),
            tablet: Row(children: [
              SideBarWidget(controller: _controller),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
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
                    height: 50,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.30,
                    width: MediaQuery.of(context).size.width / 1.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15.0,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: PaginatedDataTable(
                              header: Text('Leads'),
                              columns: [
                                DataColumn(
                                  label: Row(
                                    children: [
                                      InkWell(
                                        mouseCursor: SystemMouseCursors.click,
                                        hoverColor: Colors.black,
                                        onHover: (value) {
                                          setState(() {
                                            _textColor = value
                                                ? Colors.white
                                                : Colors.black;
                                          });
                                        },
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              'ID',
                                              style:
                                                  TextStyle(color: _textColor),
                                            ),
                                            SizedBox(width: 5),
                                            _sortBy == 'ID'
                                                ? Icon(
                                                    Icons.filter_alt_sharp,
                                                    color: _textColor,
                                                  )
                                                : SizedBox(),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                DataColumn(
                                  label: InkWell(
                                    mouseCursor: SystemMouseCursors.click,
                                    hoverColor: Colors.black,
                                    onHover: (value) {
                                      setState(() {
                                        _textColor =
                                            value ? Colors.white : Colors.black;
                                      });
                                    },
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Text(
                                          'Opportunity',
                                          style: TextStyle(color: _textColor),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.filter_alt_sharp,
                                          color: _textColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: InkWell(
                                    mouseCursor: SystemMouseCursors.click,
                                    hoverColor: Colors.black,
                                    onHover: (value) {
                                      setState(() {
                                        _textColor =
                                            value ? Colors.white : Colors.black;
                                      });
                                    },
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Text(
                                          'Client',
                                          style: TextStyle(color: _textColor),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.filter_alt_sharp,
                                          color: _textColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: InkWell(
                                    mouseCursor: SystemMouseCursors.click,
                                    hoverColor: Colors.black,
                                    onHover: (value) {
                                      setState(() {
                                        _textColor =
                                            value ? Colors.white : Colors.black;
                                      });
                                    },
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Text(
                                          'Managed By',
                                          style: TextStyle(color: _textColor),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.filter_alt_sharp,
                                          color: _textColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: InkWell(
                                    mouseCursor: SystemMouseCursors.click,
                                    hoverColor: Colors.black,
                                    onHover: (value) {
                                      setState(() {
                                        _textColor =
                                            value ? Colors.white : Colors.black;
                                      });
                                    },
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Text(
                                          'Deal Stage',
                                          style: TextStyle(color: _textColor),
                                        ),
                                        SizedBox(width: 5),
                                        Icon(
                                          Icons.filter_alt_sharp,
                                          color: _textColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverETA = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverETA = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      child: Row(
                                        children: [
                                          Text(
                                            'ETA',
                                            style: TextStyle(color:_hoverETA?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _hoverETA?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverClient = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverClient = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,
                                      child: Row(
                                        children: [
                                          Text('Tags'),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              source: _data,
                              columnSpacing: 100,
                              horizontalMargin: 10,
                              rowsPerPage: 8,
                              showCheckboxColumn: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ]),
            desktop: Row(children: [
              SideBarWidget(controller: _controller),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Row(
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
                    height: 50,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.30,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15.0,
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: PaginatedDataTable(
                              header: Text('Leads'),
                              actions: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 5.5,
                                    height: 70,
                                    child: TextField(
                                      controller: _searchController,
                                      cursorColor: Colors.grey.shade400,
                                      decoration: InputDecoration(
                                        labelText: 'Search',
                                        labelStyle: TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0))),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                          borderSide: BorderSide(color: Colors.grey),
                                        ),
                                      ),
                                      textAlignVertical: TextAlignVertical.top,
                                      onChanged: (value) {
                                        // Perform search and update table data
                                      },
                                    ),
                                  ),
                                ),
                              ],
                              headingRowHeight: 50.0,
                              columns: [
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverID = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverID = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'ID',
                                            style: TextStyle(
                                              color: _hoverID ? Colors.white : _textColor,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          _sortBy == 'ID'
                                              ? Icon(
                                            Icons.filter_alt_sharp,
                                            color: _hoverID ? Colors.white : _textColor,
                                          )
                                              : SizedBox(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverOpportunity = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverOpportunity = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Opportunity',
                                            style: TextStyle(color: _hoverOpportunity?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _hoverOpportunity?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverClient = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverClient = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Client',
                                            style: TextStyle(color:_hoverClient?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _hoverClient?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverManagedBy = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverManagedBy = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Managed By',
                                            style: TextStyle(color: _hoverManagedBy?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _hoverManagedBy?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverStatus = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverStatus = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Status',
                                            style: TextStyle(color: _hoverStatus?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _hoverStatus?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _DealStage = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _DealStage = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Deal Stage',
                                            style: TextStyle(color: _DealStage?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _DealStage?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _hoverETA = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _hoverETA = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'ETA',
                                            style: TextStyle(color: _hoverETA?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _hoverETA?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (event) {
                                      setState(() {
                                        _Tags = true;
                                      });
                                    },
                                    onExit: (event) {
                                      setState(() {
                                        _Tags = false;
                                      });
                                    },
                                    child: InkWell(
                                      hoverColor: Colors.black,

                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Tags',
                                            style: TextStyle(color: _Tags?Colors.white:_textColor),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.filter_alt_sharp,
                                            color: _Tags?Colors.white:_textColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                              source: _data,
                              columnSpacing: 85,
                              horizontalMargin: 10,
                              rowsPerPage: 8,
                              showCheckboxColumn: false,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ])));
  }
}

class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      50,
      (index) => {
            "id": index,
            "title": "Item $index",
            "price": Random().nextInt(10000)
          });

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]["title"])),
      DataCell(Text(_data[index]["price"].toString())),
      DataCell(Text(_data[index]["price"].toString())),
      DataCell(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [StatusDropDown()],
      )),
      DataCell(Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DealsDropDown(),
        ],
      )),
      DataCell(Text(_data[index]["price"].toString())),
      DataCell(Text(_data[index]["price"].toString())),
    ]);
  }
}
