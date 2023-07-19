import 'package:flutter/material.dart';
import 'package:test/screens/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.text});
  VoidCallback? onTap;
  String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: KmainColor,
          borderRadius: BorderRadius.circular(35),
        ),
        width: double.infinity,
        height: 40,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
