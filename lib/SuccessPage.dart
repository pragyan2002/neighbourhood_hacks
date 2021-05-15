import 'package:flutter/material.dart';
import 'package:neighbourhood_hacks/ResetPassword.dart';
import 'HomePage.dart';
class PasswordChangedSuccessfully extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: passwordChangedSuccessfully(),
    );
  }
}

// ignore: camel_case_types
class passwordChangedSuccessfully extends StatefulWidget {
  @override
  _passwordChangedSuccessfullyState createState() =>
      _passwordChangedSuccessfullyState();
}

// ignore: camel_case_types
class _passwordChangedSuccessfullyState
    extends State<passwordChangedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.thumb_up_off_alt,color: Colors.redAccent,size: 230),
          Container(
            height: 50,
            width: 300,
          ),
          Text(
            "Successful!",
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          Text(
            "You have successfully changed your password. Please use your new password to login!",
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70,
          ),
          Center(
            child: InkWell(
              onTap: openHomePage,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Colors.redAccent,
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void openHomePage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  void back() {
    Navigator.pop(
        context, MaterialPageRoute(builder: (context) => ResetPassword()));
  }

}
