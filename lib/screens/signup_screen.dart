import 'package:flutter/material.dart';
import 'package:test/screens/constants.dart';
import 'package:test/widgets/custom_text_field.dart';

class SignUp extends StatefulWidget {
  static String id = 'SingupScreen';
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with RegisterAuth {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create an account")),
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
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const SizedBox(height: 25.0),
                            CustomTextField(),
                            TextFormField(
                              decoration: buildInputDecoration("Email"),
                              validator: InputValidator.email,
                            ),
                            const SizedBox(height: 8.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                obscureText: visiblePassword,
                                decoration:
                                    buildInputDecoration("Password", true),
                                validator: InputValidator.password,
                                onChanged: (t) {
                                  InputValidator.passwordText = t;
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: TextFormField(
                                obscureText: visiblePassword,
                                onChanged: (t) {
                                  InputValidator.confirmPasswordText = t;
                                },
                                decoration: buildInputDecoration(
                                    "Re-enter password", true),
                                validator: InputValidator.password,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          height: 40.0,
                          minWidth: MediaQuery.of(context).size.width,
                          color: KmainColor,
                          onPressed: () {
                            register();
                          },
                          child: isLoading
                              ? const SizedBox(
                                  width: 20.0,
                                  height: 20.0,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.0,
                                  ))
                              : const Text("Create account",
                                  style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(
                        color: const Color(0xfffcfcfb),
                        height: 60.0,
                        alignment: Alignment.center,
                        child: const Text.rich(
                          TextSpan(
                            text: "Don't hame an account yet? ",
                            children: [
                              TextSpan(
                                  text: "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ))
                            ],
                            style: TextStyle(fontSize: 12.0),
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

  InputDecoration buildInputDecoration(hintText, [eyeVisible = false]) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
    );

    return InputDecoration(
      suffixIcon: eyeVisible
          ? IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: !visiblePassword ? Colors.grey : Colors.red,
              ),
              onPressed: () {
                setState(() {
                  visiblePassword = !visiblePassword;
                });
              },
            )
          : const SizedBox.shrink(),
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
      border: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
    );
  }

  @override
  Future register() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      setState(() {
        isLoading = true;
      });
      if (rememberMe) {
        debugPrint("saved");
      }
      await Future.delayed(const Duration(seconds: 1));
      setState(() {
        isLoading = false;
      });
    }
    return null;
  }
}

abstract mixin class RegisterAuth {
  GlobalKey<FormState> formKey = GlobalKey();
  bool rememberMe = false;
  bool visiblePassword = false;
  bool isLoading = false;
  Future register();
}

class InputValidator {
  static String? confirmPasswordText;
  static String? passwordText;
  static String? emailText;
  static String? name;

  // static emptyCheck(String msg) {
  //   return (t) {
  //     if (t.isEmpty || t == null) return msg;
  //     return null;
  //   };
  // }

  static String? email(String? t) {
    if (t!.isEmpty) return "Email can't be empty";
    return null;
  }

  static String? password(String? t) {
    if (t!.isEmpty) return "Password can't be empty";
    if (confirmPasswordText != passwordText) return "Password not matched";
    return null;
  }
}

// Padding(
//   padding: const EdgeInsets.only(right: 26.0),
//   child: CheckboxListTile(
//     onChanged: (a) {
//       setState(() {
//         rememberMe = !rememberMe;
//       });
//     },
//     value: rememberMe,
//     controlAffinity: ListTileControlAffinity.leading,
//     title: const Text(
//       "Receive our weekly newsletter and other occasional updates",
//       style: TextStyle(
//         fontSize: 12.0,
//       ),
//     ),
//   ),
// ),
