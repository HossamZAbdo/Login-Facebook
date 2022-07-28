import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 20,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              SizedBox(width: 15),
              Column(
                children: [
                  Text(
                    'Owner',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text('2h'),
                      SizedBox(width: 6),
                      Icon(Icons.public)
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            'My Post',
            style: TextStyle(fontSize: 25),
          ),
          Row(
            children: [
              Text(
                '100',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(width: 6),
              Image.asset(
                'assets/image/like.jpg',
                height: 35,
                width: 40,
              ),
              Spacer(),
              Text(
                '100 Comment',
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
          Divider(thickness: 1,color: Colors.black,
          height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/image/singleLike.jpg',width: 30,height: 30,),
              Text('Likes'),
              Image.asset('assets/image/comment.jpg',width: 30,height: 30,),
              Text('Comment'),
              Image.asset('assets/image/share.png',width: 30,height: 30,),
              Text('Shear'),
            ],
          ),
          Divider(thickness: 1,color: Colors.black,)
        ],
      ),
    );
  }
}
