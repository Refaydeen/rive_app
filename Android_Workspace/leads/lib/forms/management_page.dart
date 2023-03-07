import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/dashBoard_screen.dart';
import '../widgets/create_leadButton.dart';
class ManagementPage extends StatelessWidget {
  const ManagementPage({required this.onPress});
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25,
        ),
        Expanded(
            flex: 1,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lead Managed By",
                  style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),
        ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Select"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Tech Stack', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Select"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Tages', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Tags"
                  ),
                ),

              ],
            )
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BA Assigned', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
              ),),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Client's requirement here"
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text('Company Mapping', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
              ),),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Select"
                ),
              ),
              SizedBox(
                height: 405,
              ),

              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                           Navigator.pop(context);
                        },
                    child: Container(
                      child: Center(child: Text('Cancel',style: TextStyle(color: Color(0XFF7E6EF2)),)),
                      height: 25,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border:
                        Border.all(color: Color(0XFF7E6EF2), width: 1.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CreateLeadButton(
                      name:'Create',
                      onPress: () {
                        Navigator.pop(context);
                      },),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
