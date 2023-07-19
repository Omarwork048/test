import 'package:flutter/material.dart';
import 'package:test/c.dart';
import 'package:test/screens/constants.dart';
import 'package:test/screens/signup_screen.dart';
import 'package:test/widgets/custom_button.dart';
import 'package:test/widgets/custom_button_connect.dart';
import 'package:test/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LiginScreen';
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
            SizedBox(height: 15),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: CustomTextField(
                hintText: "Username or Phone Number",
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
              child: CustomTextField(
                hintText: "Password",
                obscureText: true,
                inputType: TextInputType.number,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?",
                      style: TextStyle(
                          color: KmainColor, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: CustomButton(text: "Login"),
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
            SizedBox(height: 150),
            // Container(
            //   alignment: Alignment.center,
            //   child: Text.rich(TextSpan(
            //       text: "Don't have on account yet? ",
            //       children: <TextSpan>[
            //         TextSpan(
            //             text: "Sign Up",
            //             style: TextStyle(
            //                 fontWeight: FontWeight.bold, color: Colors.blue)),
            //       ])),
            // ),
            Container(
              height: 80.0,
              alignment: Alignment.center,
              child: const Text.rich(
                TextSpan(
                  text: "Don't have an account yet? ",
                  style: TextStyle(fontSize: 18.0),
                  children: [
                    TextSpan(
                        text: "SignUp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: KmainColor,
                          fontSize: 18,
                        ))
                  ],
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text("Signup")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => c()));
                },
                child: Text("c")),
          ],
        ));
  }
}
