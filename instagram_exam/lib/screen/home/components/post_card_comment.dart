import 'package:flutter/material.dart';

class PostCardComment extends StatelessWidget {
  final String title;
  final String content;
  final String uploadTime;

  const PostCardComment({
    required this.title,
    required this.content,
    required this.uploadTime,
    Key? key,
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
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(content),
          const SizedBox(height: 5),
          Text(
            uploadTime,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
