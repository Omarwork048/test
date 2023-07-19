import 'package:flutter/material.dart';
import 'package:test/screens/constants.dart';
import 'package:test/widgets/custom_button.dart';
import 'package:test/widgets/custom_text_field.dart';

import '../widgets/custom_button_connect.dart';

class SignUp extends StatefulWidget {
  static String id = 'SingupScreen';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text("Create an account",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
      ),
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 30),
                  child: Container(
                    width: double.maxFinite,
                    // height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome !",
                            style: TextStyle(
                                fontFamily: "Gilroy",
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Please create an new account",
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    ),
                  ),
                ),
                Form(
                  // key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 25.0),
                            CustomTextField(
                              hintText: "Username or Phone Number",
                            ),
                            const SizedBox(height: 8.0),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: CustomTextField(
                                  hintText: "Create Password",
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: CustomTextField(
                                  hintText: "Confirm Password",
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forget Password?",
                                style: TextStyle(
                                    color: KmainColor,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          child: CustomButton(text: "Sign Up")),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text("Or connect using",
                            style: TextStyle(color: Colors.black38)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButtonConnect(
                                text: "Facebook",
                                icon: Icon(
                                  Icons.facebook,
                                  size: 30,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            CustomButtonConnect(
                                text: "Google  ",
                                icon: Icon(
                                  Icons.gif_outlined,
                                  size: 40,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Container(
                        height: 80.0,
                        alignment: Alignment.center,
                        child: const Text.rich(
                          TextSpan(
                            text: "I have an account ! ",
                            style: TextStyle(fontSize: 18.0),
                            children: [
                              TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: KmainColor,
                                    fontSize: 18,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
