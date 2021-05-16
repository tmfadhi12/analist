import 'package:rebuild3/services/services.dart';
import 'package:rebuild3/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
        value: AuthServices.userStream,
        child: MaterialApp(
          routes: {
            '/signin': (context) => SignInPage(),
            '/register': (context) => SignUpPage(),
            '/setting': (context) => SettingPage(),
          },
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
        ));
  }
}
