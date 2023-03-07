import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/dashBoard_screen.dart';
import '../widgets/create_leadButton.dart';
class ClientPage extends StatelessWidget {
  const ClientPage({required this.onPress});
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
                Text("Client's Name", style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter clients name"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Email Address', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter their Email Address"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Website', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter the link of the client's website"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Region/City', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Select"
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
              Text('Designation', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
              ),),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter their current designation"
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text('Phone ', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
              ),),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Contact number"
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text('Country', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
              ),),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Select"
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text('Business -Point of Contact', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
              ),),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Select"
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      child:
                      Center(child: Text('Cancel',style: TextStyle(color: Color(0XFF7E6EF2))
                        ,)
                      ),
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
                      name:'Next',
                      onPress: onPress),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
