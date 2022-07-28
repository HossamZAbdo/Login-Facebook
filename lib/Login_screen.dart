import 'package:flutter/material.dart';
import 'package:untitled3_loginfacebook/Home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routName = 'Login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 4),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.facebook,
                  color: Colors.white,
                  size: 80,
                )
                //Image.asset(
                //   'assets/image/img.png',
                //   width: 80,
                // )
                ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.white70, fontSize: 20),
                controller: TextEditingController(
                  text: 'Email or Phon',
                ),
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.white70, fontSize: 20),
                controller: TextEditingController(text: 'Password'),
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.all(20),
            //   child: TextField(
            //     decoration: InputDecoration(
            //
            //         hintText: 'hossam',hintStyle: TextStyle(
            //         color: Colors.white,
            //       fontSize: 20,
            //
            //     )),
            //   ),
            // ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(HomeScreen.routName);
              },
              color: Colors.white30,
              height: 40,
              minWidth: 350,
              child: Text(
                'LOG IN',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            //SizedBox(height: 50),
            Spacer(flex: 2),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sing up for facebook',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
