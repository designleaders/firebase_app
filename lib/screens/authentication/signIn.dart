import 'package:firebase_app/service/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          title: Text('SignIn'),
          centerTitle: true,
        ),
        backgroundColor: Colors.brown[100],
        body: Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print('signin error!');
                } else {
                  print('signed in');
                  print(result);
                }
              },
              child: Text('SignIn'),
            ),
          ),
        ),
      ),
    );
  }
}
