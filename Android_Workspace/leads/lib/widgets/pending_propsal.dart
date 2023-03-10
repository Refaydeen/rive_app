import 'dart:math';

import 'package:flutter/material.dart';

class PendingProposal extends StatefulWidget {
  const PendingProposal({Key? key}) : super(key: key);

  @override
  State<PendingProposal> createState() => _PendingProposalState();
}

class _PendingProposalState extends State<PendingProposal> {
  final DataTableSource _data = MyData();
  String _sortBy = 'ID';
  bool _hoverID = false;
  bool _hoverOpportunity = false;
  bool _hoverClient = false;
  bool _hoverManagedBy = false;
  bool _hoverETA = false;
  bool _hoverStatus = false;
  Color _textColor = Color(0xff7E6EF2);
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: PaginatedDataTable(
          header: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Pending Proposals',
                  style: TextStyle(fontSize: 17, color: Color(0xFF2A2E3E))),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 5.5,
                  child: TextField(
                    controller: _searchController,
                    cursorColor: Colors.grey.shade400,
                    decoration: InputDecoration(
                      labelText: 'Search',
                      labelStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(30.0))),
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
          ),
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
                        style: TextStyle(
                            color:
                                _hoverOpportunity ? Colors.white : _textColor),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.filter_alt_sharp,
                        color: _hoverOpportunity ? Colors.white : _textColor,
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
                        style: TextStyle(
                            color: _hoverClient ? Colors.white : _textColor),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.filter_alt_sharp,
                        color: _hoverClient ? Colors.white : _textColor,
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
                        style: TextStyle(
                            color: _hoverManagedBy ? Colors.white : _textColor),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.filter_alt_sharp,
                        color: _hoverManagedBy ? Colors.white : _textColor,
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
                        style: TextStyle(
                            color: _hoverETA ? Colors.white : _textColor),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.filter_alt_sharp,
                        color: _hoverETA ? Colors.white : _textColor,
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
                        style: TextStyle(
                            color: _hoverStatus ? Colors.white : _textColor),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.filter_alt_sharp,
                        color: _hoverStatus ? Colors.white : _textColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          dataRowHeight: 35,
          source: _data,
          columnSpacing: 170,
          horizontalMargin: 10,
          rowsPerPage: 5,
          showCheckboxColumn: false,
        ),
      ),
    );
  }
}

class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
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
      DataCell(Text(_data[index]["price"].toString())),
      DataCell(Text(_data[index]["price"].toString())),
    ]);
  }
}
