import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:untitled3_loginfacebook/Post_Widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routName = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontSize: 20)),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.separated(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Stack(
                children: [
                  ClipRRect(
                    child: Image.asset('assets/image/facebookStory.jpg'),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  CircleAvatar(
                      radius: 15,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  Positioned(
                    bottom: 10,
                    left: 5,
                    child: Text(
                      'User',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              itemCount: 20,
              separatorBuilder: (BuildContext context, index) =>
                  SizedBox(width: 10),
            ),
          ),
          Expanded(
              flex: 6,
              child: ListView.builder(
                itemBuilder: (context, index) => PostWidget(),itemCount: 20,
              )
          )
        ],
      ),
    );
  }
}
