import 'package:flutter/material.dart';
import 'package:test/c.dart';
import 'package:test/screens/constants.dart';
import 'package:test/screens/signup_screen.dart';
import 'package:test/widgets/custom_button.dart';
import 'package:test/widgets/custom_button_connect.dart';
import 'package:test/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'LiginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KmainColor,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .16,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Sign in",
                          style: TextStyle(
                            color: KwColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("Skip",
                          style: TextStyle(
                            color: KwColor,
                            fontSize: 20,
                          )),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 69),
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          topLeft: Radius.circular(30.0)),
                      color: KwColor,
                    ),
                    // height: MediaQuery.of(context).size.height,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Welcome back !",
                                    style: TextStyle(
                                        fontFamily: "Gilroy",
                                        fontSize: 24,
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
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20.0),
                            child: CustomTextField(
                              hintText: "Username or Phone Number",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 20.0),
                            child: CustomTextField(
                              hintText: "Password",
                              obscureText: true,
                              inputType: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 4),
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
                          Padding(
                            padding: EdgeInsets.all(16),
                            child: CustomButton(
                              text: "Login",
                              onTap: () {},
                            ),
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
                          SizedBox(height: 20),
                          Container(
                            height: 80.0,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account yet? ",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  },
                                  child: Text("SignUp",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: KmainColor,
                                        fontSize: 16,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
