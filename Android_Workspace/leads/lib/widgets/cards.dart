import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leads/responsive.dart';

import 'dropdown_list.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.5)),
            gradient: LinearGradient(
              colors: [Color(0XFF6552C5), Color(0XFF9787E6)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: 100,
          width: 170,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'New Leads',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.notoSans().fontFamily,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '2,876',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.notoSans().fontFamily),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.5)),
            gradient: LinearGradient(
              colors: [Color(0XFFF9532B), Color(0XFFF5A52B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: 100,
          width: 170,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Leads Converted',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.notoSans().fontFamily,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '3,299',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.notoSans().fontFamily),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.5)),
            gradient: LinearGradient(
              colors: [Color(0XFF22976E), Color(0XFF36D28E)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: 100,
          width: 170,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Active Leads',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.notoSans().fontFamily,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '1,735',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.notoSans().fontFamily),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4.5)),
            gradient: LinearGradient(
              colors: [Color(0XFFAB0000), Color(0XFFF52B2B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          height: 100,
          width: 170,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Inactive Leads',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: GoogleFonts.notoSans().fontFamily,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '2,875',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.notoSans().fontFamily),
                  ),
                ],
              ),
            ],
          ),
        ),

        //  FUNNEL BUTTON


        Responsive(
          mobile: Container(),
          tablet: Container(),
          desktop: Container(),
        ),
      ],
    );
  }
}
