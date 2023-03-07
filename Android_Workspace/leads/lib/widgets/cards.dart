import 'package:flutter/material.dart';
import 'package:leads/responsive.dart';

import 'dropdown_list.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(
          width: 5,
        ),
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
        SizedBox(
          width: 10,
        ),
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

      //  FUNNEL BUTTON
         SizedBox(
           width: 70,
         ),

        Responsive(
          mobile: Container(),
          tablet: Container(),
          desktop: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              //1
              Container(
                  height: 25,
                  width: 300,
                  child: Center(child: Text('Prospects',style: TextStyle(color: Colors.white,fontSize: 15),)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFFBB40),
                    border:
                    Border.all( color: Color(0xffFFBB40), width: 1.5),
                  ),
              ),
              SizedBox(
                height: 8,
              ),
              //2
              Container(
                height: 25,
                width: 260,
                child: Center(child: Text('Qualified',style: TextStyle(color: Colors.white,fontSize: 15),)),
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
                child: Center(child: Text('Proposals',style: TextStyle(color: Colors.white,fontSize: 15),)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffFF520D),
                  border:
                  Border.all( color: Color(0xffFF520D), width: 1.5),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              //4
              Container(
                height: 25,
                width: 200,
                child: Center(child: Text('Negotiations',style: TextStyle(color: Colors.white,fontSize: 15),)),
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

            ],
          ),
        ),

      ],
    );
  }
}

