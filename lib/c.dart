import 'package:flutter/material.dart';
import 'package:test/screens/constants.dart';

class c extends StatelessWidget {
  const c({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KmainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: KmainColor,
        title: Text("omar"),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 8),
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0)),
              color: KwColor,
            ),
            height: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}
