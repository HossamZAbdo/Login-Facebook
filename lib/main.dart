import 'package:flutter/material.dart';
import 'package:untitled3_loginfacebook/Home_screen.dart';
import 'package:untitled3_loginfacebook/Login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routName,
      routes: {
        LoginScreen.routName:(context) => LoginScreen(),
        HomeScreen.routName:(context) => HomeScreen()
      },
      home: LoginScreen(),
    );
  }
}
