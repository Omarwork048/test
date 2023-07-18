import 'package:flutter/material.dart';
import 'package:test/screens/constants.dart';
import 'package:test/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LiginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KmainColor,
        appBar: AppBar(
          backgroundColor: KmainColor,
          title: Text("Sign in"),
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Container(
                  // height: MediaQuery.of(context).size.height,

                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back !",
                          style: TextStyle(
                              fontFamily: "Gilroy",
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Please sign in with you account",
                        style: TextStyle(color: Colors.black38),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: TextField(
                  cursorColor: KmainColor,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22)),
                      hintText: 'Username or Phone Number',
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text.rich(TextSpan(
                    text: "Don't have on account yet? ",
                    children: <TextSpan>[
                      TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue)),
                    ])),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Signup"))
            ],
          ),
        ));
  }
}
