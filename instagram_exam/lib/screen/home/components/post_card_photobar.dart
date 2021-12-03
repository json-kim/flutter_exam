import 'package:flutter/material.dart';

class PostCardPhotoBar extends StatelessWidget {
  final int photoLength;
  final int currentIndex;

  const PostCardPhotoBar({
    this.photoLength,
    this.currentIndex,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat_bubble_outline),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send_outlined),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_border),
              ),
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                photoLength,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: CircleAvatar(
                      backgroundColor: (index == currentIndex)
                          ? Colors.blue
                          : Colors.grey.withOpacity(0.5),
                      radius: 3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
