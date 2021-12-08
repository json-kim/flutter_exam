import 'package:flutter/material.dart';

import '../tab_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('로그인 화면'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabScreen(),
                  ),
                );
              },
              child: Text('로그인')),
        ));
  }
}
