import 'package:flutter/material.dart';
import 'package:instagram_exam/screen/home/components/post_card_comment.dart';
import 'package:instagram_exam/screen/home/components/post_card_header.dart';
import 'package:instagram_exam/screen/home/components/post_card_photo.dart';
import 'package:instagram_exam/screen/home/components/post_card_photobar.dart';

class PostCard extends StatefulWidget {
  final List<String> photoUrls;

  PostCard({
    this.photoUrls,
    Key key,
  }) : super(key: key);

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int currentIndex = 0;

  void setIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Divider(
              height: 0, color: Colors.grey.withOpacity(0.5), thickness: 1.5),
          PostCardHeader(
            profileImgUrl:
                'https://cdn.pixabay.com/photo/2016/12/18/10/03/let-it-snow-1915324_960_720.png',
            fullName: 'Santa Claus',
            nickName: 'Santa',
          ),
          PostCardPhoto(
            photoUrls: widget.photoUrls,
            setIndex: setIndex,
          ),
          PostCardPhotoBar(
            photoLength: widget.photoUrls.length,
            currentIndex: currentIndex,
          ),
          PostCardComment(
            title: 'Merry Christmas',
            content:
                'Christmas is an annual festival commemorating the birth of Jesus Christ, observed primarily on December 25, as a religious and cultural celebration among billions of people around the world.',
            uploadTime: 'update 10 minutes before',
          ),
        ],
      ),
    );
  }
}
