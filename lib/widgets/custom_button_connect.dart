import 'package:flutter/material.dart';
import '../screens/constants.dart';

class CustomButtonConnect extends StatelessWidget {
  CustomButtonConnect({required this.text, required this.icon});
  String text;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      onPressed: () {},
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
          side: BorderSide(width: 1, color: KgColor)),
      textColor: KmainColor,
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
