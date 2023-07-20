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
        actions: <Widget>[
          ButtonBar(
            children: [
              Text("Skip",
                  style: TextStyle(
                    fontSize: 20,
                  ))
            ],
          )
        ],
        backgroundColor: KmainColor,
        title: Text("Sign in",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
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
