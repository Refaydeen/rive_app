import 'package:flutter/material.dart';

class CreateLeadButton extends StatelessWidget {
  const CreateLeadButton({required this.onPress, this.name});
  final VoidCallback onPress;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed:onPress,
      height: 35,
      minWidth: 100,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)),
      color: Color(0XFF7E6EF2),
      child: Text(
        name!,
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    );
  }
}
