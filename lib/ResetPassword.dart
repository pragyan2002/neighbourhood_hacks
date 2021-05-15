import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neighbourhood_hacks/ForgotPassword.dart';

import 'SuccessPage.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: resetPassword(),
    );
  }
}

// ignore: camel_case_types
class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

// ignore: camel_case_types
class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Reset Password",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              "Reset code is sent to your E-mail ID. Please enter your code to change the password.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Reset Code",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "****"),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Password",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "Enter your password here."),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration:
                  InputDecoration(hintText: "Re-enter your password here."),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Expanded(
              child: Center(
                child: InkWell(
                  onTap: openSuccessPage,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.redAccent,
                    ),
                    child: Text(
                      "Change Password",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openSuccessPage(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordChangedSuccessfully()));
  }

  void back() {
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => ForgotPassword() ));
  }

}
