import 'package:flutter/material.dart';
import 'package:instagram_exam/data/fake_data.dart';
import 'package:instagram_exam/screen/home/components/post_card.dart';
import 'package:instagram_exam/screen/home/components/profile_list.dart';

class HomeScreen extends StatelessWidget {
  final List<String> photoUrls = [
    'https://cdn.pixabay.com/photo/2018/12/13/14/24/the-kremlin-3872941_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/09/10/09/38/christmas-3666644_960_720.jpg',
    'https://cdn.pixabay.com/photo/2021/11/12/09/07/advent-6788404_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/12/04/21/22/snowman-1882635_960_720.jpg',
  ];

  HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        ProfileList(),
        ...postList.map((e) => PostCard(post: e)).toList(),
      ],
    );
  }
}
