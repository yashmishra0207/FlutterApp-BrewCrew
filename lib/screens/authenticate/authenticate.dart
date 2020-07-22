import 'package:break_crew/screens/authenticate/register.dart';
import 'package:break_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool _showSignIn = true;

  void toggleView() {
    setState(() {
      _showSignIn = !_showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _showSignIn ? SignIn(toggleView: toggleView) : Register(toggleView: toggleView),
    );
  }
}
