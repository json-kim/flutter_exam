import 'package:flutter/material.dart';

class PostCardComment extends StatelessWidget {
  final String title;
  final String content;
  final String uploadTime;

  const PostCardComment({
    this.title,
    this.content,
    this.uploadTime,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(content),
          SizedBox(height: 5),
          Text(
            uploadTime,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
