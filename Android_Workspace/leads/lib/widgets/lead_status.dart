import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class LeadStatus extends StatelessWidget {
  const LeadStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 240,
      width: 250,
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
            width: 10,
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Text('Lead Status',style: TextStyle(color: Color(0xFF2A2E3E),fontWeight: FontWeight.w400,fontSize: 14,fontFamily: GoogleFonts.notoSans().fontFamily)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 180,
            width: 160,
            child:PieChart(
                PieChartData(
                    sections: [
                      PieChartSectionData(showTitle: true,value: 70,color: Colors.red.shade900),
                      PieChartSectionData(showTitle: true,value: 7,color: Colors.deepOrange),
                      PieChartSectionData(value: 23,color: Colors.blue.shade900),

                    ]
                )
            ),
          )
        ],
      ),
    );
  }
}
//mobile
class LeadStatusMobile extends StatelessWidget {
  const LeadStatusMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 400,
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
            width: 10,
            height: 13,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Text('Lead Status',style: TextStyle(color: Colors.black,)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 120,
            width: 130,
            child:PieChart(
                PieChartData(
                    sections: [
                      PieChartSectionData(value: 70,color: Colors.red.shade900),
                      PieChartSectionData(value: 7,color: Colors.deepOrange),
                      PieChartSectionData(value: 23,color: Colors.blue.shade900),

                    ]
                )
            ),
          )
        ],
      ),
    );
  }
}

