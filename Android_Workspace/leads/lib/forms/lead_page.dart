import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leads/screens/dashBoard_screen.dart';
import '../widgets/create_leadButton.dart';
class LeadPage extends StatefulWidget {
  const LeadPage({required this.onPress});
  final VoidCallback onPress;

  @override
  State<LeadPage> createState() => _LeadPageState();
}

class _LeadPageState extends State<LeadPage> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25,
        ),
        Expanded(
          flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Company', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Firm's Name"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Source',
                  style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Through whom/where we got this lead"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Project Type',style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                     ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Select"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Probability of conversion', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "% of conversion"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Deal Stage', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
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
                Text('Lead/Need', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "% of conversion"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('POC Needed', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),),

                FormField<String>(
                  builder: (FormFieldState<String> state) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        labelText: 'Select an option',
                        border: InputBorder.none,
                        errorText: state.errorText,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _selectedOption,
                          isDense: true,
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedOption = newValue;
                              state.didChange(newValue);
                            });
                          },
                          items: [
                            DropdownMenuItem<String>(
                              value: 'yes',
                              child: Text('Yes'),
                            ),
                            DropdownMenuItem<String>(
                              value: 'no',
                              child: Text('No'),
                            ),

                          ],
                        ),
                      ),
                    );
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an option';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Industry/Domain', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
                ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Industry/Domain the clients operates in"
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text('Status', style:GoogleFonts.notoSans(textStyle:TextStyle(color: Color(0xff3F3F3F),fontSize: 14)
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
                        name:'Next',
                        onPress: widget.onPress),
                  ],
                )
              ],
            ),
        )
      ],
    );
  }
}
