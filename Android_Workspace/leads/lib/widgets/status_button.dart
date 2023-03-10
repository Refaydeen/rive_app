import 'package:flutter/material.dart';

class StatusDropDown extends StatefulWidget {
  const StatusDropDown({Key? key}) : super(key: key);

  @override
  State<StatusDropDown> createState() => _StatusDropDownState();
}

class _StatusDropDownState extends State<StatusDropDown> {
  var selectedValue;
  //initial value
  String dropdownvalue = 'Hot';
  var items = [
    'Hot',
    'Warm',
    'Cold',
  ];
  Color _getButtonColor() {
    if (dropdownvalue == 'Hot') {
      return Color(0xffB4303D);
    } else if (dropdownvalue == 'Warm') {
      return Color(0xffDC734F);
    } else if (dropdownvalue == 'Cold') {
      return Color(0xff003FB8);
    } else {
      return Colors
          .grey; // default color if none of the above conditions are met
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _getButtonColor(),
        border: Border.all(color: _getButtonColor(), width: 1.5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          alignment: Alignment.center,
          focusColor: Colors.black12,
          underline: null,
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(
                items,
                style: TextStyle(
                  color: dropdownvalue == items ? Colors.white : Colors.black,
                ),
              ),
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
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
