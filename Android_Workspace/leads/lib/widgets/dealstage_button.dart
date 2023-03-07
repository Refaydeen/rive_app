import 'package:flutter/material.dart';

class DealsDropDown extends StatefulWidget {
  const DealsDropDown({Key? key}) : super(key: key);

  @override
  State<DealsDropDown> createState() => _DealsDropDownState();
}

class _DealsDropDownState extends State<DealsDropDown> {
  var selectedValue;

  //initial value
  String dropdownvalue = 'Prospect';
  var items = [
    'Prospect',
    'Qualified',
    'Proposal',
    'Negotiations',
    'Final Sales',
    'Awaiting',
    'Lost',
    'Won'
  ];

  Color _getButtonColor() {
    if (dropdownvalue == 'Prospect') {
      return Color(0xffFFBB40);
    } else if (dropdownvalue == 'Qualified') {
      return Color(0xff00C7B2);
    } else if (dropdownvalue == 'Proposal') {
      return Color(0xffFF520D);
    } else if (dropdownvalue == 'Qualified') {
      return Color(0xff);
    } else if (dropdownvalue == 'Negotiations') {
      return Color(0xffFE8A11);
    }
    else if (dropdownvalue == 'Final Sales') {
      return Color(0xff93C90F);
    }
    else if (dropdownvalue == 'Awaiting') {
      return Color(0xff015486);
    } else if (dropdownvalue == 'Lost') {
      return Color(0xff00A0DC);
    } else if (dropdownvalue == 'Won') {
      return Color(0xff009D2C);
    }
    else {
      return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 25,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _getButtonColor() ,
        border:
        Border.all(color: _getButtonColor(),width: 1.5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(

          alignment: Alignment.center,
          focusColor: Colors.black12,
          underline: null,
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items,style: TextStyle(color: Colors.black),),
            );
          }).toList(),
          // After selecting the desired option,it will
          // change button value to selected value
          onChanged: (String? newValue) {
            setState(() {
              dropdownvalue = newValue!;
            });
          },
          value: dropdownvalue,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
            size: 30,
          ),

        ),
      ),
    );
  }
}
