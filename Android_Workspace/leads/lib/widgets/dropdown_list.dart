import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  var selectedValue;

  // Initial Selected Value
  String dropdownvalue = 'Ideassion';

  // List of items in our dropdown menu
  var items = [
    'Ideassion',
    'ITS',
    'IBCC',
    'IITT',
    'TTL',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(

        child: DropdownButton<String>(

          icon: Image.asset(
            'images/butterfly.png',
            height: 24,
            width: 20,
          ),
          alignment: Alignment.center,
          focusColor: Colors.black12,
          underline: null,
          items: items.map((String items) {
            return DropdownMenuItem(
              value: items,
              child: Text(items),
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

        ),
      ),
    );
  }
}
