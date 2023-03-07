import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tiny_charts/tiny_charts.dart';

class Managedby extends StatelessWidget {
  const Managedby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 450,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              Text('Managed by',style: TextStyle(color: Colors.black),),
              ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: InkWell(
                  onTap: () {
                    // button tap action
                  },
                  child: Row(
                    children: [
                      // SizedBox(width: 10),
                      // Text("Filter"),
                      // Icon(Icons.filter_list_alt),
                      Container(
                        height: 28,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          border: Border.all(color: Colors.blue.shade200, width: 1),
                        ),
                        child:DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            alignment: Alignment.center,
                            focusColor: Colors.black12,
                            underline: null,
                            items: [
                              DropdownMenuItem(
                                child: Text(" Filter",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                value: " Filter",
                              ),
                              DropdownMenuItem(
                                child: Text("ITS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                value: "ITS",
                              ),
                              DropdownMenuItem(
                                child: Text("IBCC",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                value: "IBCC",
                              ),
                              DropdownMenuItem(
                                child: Text("IITT",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                value: "IITT",
                              ),
                              DropdownMenuItem(
                                child: Text("TTL",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                                value: "TTL",
                              ),
                            ],
                            onChanged: (value) {
                              // handle the change event
                            },
                            value: " Filter",
                            icon:Icon(Icons.filter_list_alt,color: Colors.black,size: 20.0,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Color(0xffE6EBF1),
            thickness: 1,
            height: 20,
          ),


          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                  TinyBarChart.stacked( data: const <double>[9, 6, 2],
                    options: const TinyBarChartOptions(
                      colors: [
                        Color(0xff09C370),
                        Color(0xffF5BE59),
                        Color(0xff99DC5F),
                      ],
                    ),
                    width: 400,
                    height: 20,
                  ),
                ],),
                SizedBox(height: 20,),

                Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                  TinyBarChart.stacked( data: const <double>[7, 6, 4],
                    options: const TinyBarChartOptions(
                      colors: [
                        Color(0xffF37F57),
                        Color(0xff2D8DCC),
                        Color(0xff06B938)

                      ],
                    ),
                    width: 400,
                    height: 20,
                  ),
                ],),
                SizedBox(height: 20,),

                Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                  TinyBarChart.stacked( data: const <double>[8, 5, 3,2],
                    options: const TinyBarChartOptions(
                      colors: [
                        Color(0xff1678D6),
                        Color(0xffE59B56),
                        Color(0xffF37F57),
                        Color(0xff06B938),
                      ],
                    ),
                    width: 400,
                    height: 20,
                  ),
                ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//mobilre
class ManagedByMobile extends StatelessWidget {
  const ManagedByMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 380,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,

          ),
          Row(
            children: [
              Text('Managed by',style: TextStyle(color: Colors.black),),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    // button tap action
                  },
                  child: Row(
                    children: [
                      // SizedBox(width: 10),
                      // Text("Filter"),
                      // Icon(Icons.filter_list_alt),
                      // Container(
                      //   height: 28,
                      //   width: 80,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(2),
                      //     color: Colors.white,
                      //     border: Border.all(color: Colors.blue.shade200, width: 1.2),
                      //   ),
                      //   child:DropdownButtonHideUnderline(
                      //     child: DropdownButton<String>(
                      //       alignment: Alignment.center,
                      //       focusColor: Colors.black12,
                      //       underline: null,
                      //       items: [
                      //         DropdownMenuItem(
                      //           child: Text(" Filter",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      //           value: " Filter",
                      //         ),
                      //         DropdownMenuItem(
                      //           child: Text("ITS",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      //           value: "ITS",
                      //         ),
                      //         DropdownMenuItem(
                      //           child: Text("IBCC",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      //           value: "IBCC",
                      //         ),
                      //         DropdownMenuItem(
                      //           child: Text("IITT",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      //           value: "IITT",
                      //         ),
                      //         DropdownMenuItem(
                      //           child: Text("TTL",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
                      //           value: "TTL",
                      //         ),
                      //       ],
                      //       onChanged: (value) {
                      //         // handle the change event
                      //       },
                      //       value: " Filter",
                      //       icon:Icon(Icons.filter_list_alt,color: Colors.black,size: 20.0,),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Color(0xffE6EBF1),
            thickness: 1,
            height: 20,
          ),


          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    TinyBarChart.stacked( data: const <double>[9, 6, 2],
                      options: const TinyBarChartOptions(
                        colors: [
                          Color(0xff09C370),
                          Color(0xffF5BE59),
                          Color(0xff99DC5F),
                        ],
                      ),
                      width: 280,
                      height: 20,
                    ),
                  ],),
                SizedBox(height: 20,),

                Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    TinyBarChart.stacked( data: const <double>[7, 6, 4],
                      options: const TinyBarChartOptions(
                        colors: [
                          Color(0xffF37F57),
                          Color(0xff2D8DCC),
                          Color(0xff06B938)

                        ],
                      ),
                      width: 280,
                      height: 20,
                    ),
                  ],),
                SizedBox(height: 20,),

                Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    TinyBarChart.stacked( data: const <double>[8, 5, 3,2],
                      options: const TinyBarChartOptions(
                        colors: [
                          Color(0xff1678D6),
                          Color(0xffE59B56),
                          Color(0xffF37F57),
                          Color(0xff06B938),
                        ],
                      ),
                      width: 280,
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ) ;
  }
}

