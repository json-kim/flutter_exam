import 'package:flutter/material.dart';
import 'package:instagram_exam/model/post.dart';
import 'package:instagram_exam/screen/home/components/post_card_comment.dart';
import 'package:instagram_exam/screen/home/components/post_card_header.dart';
import 'package:instagram_exam/screen/home/components/post_card_photo.dart';
import 'package:instagram_exam/screen/home/components/post_card_photobar.dart';

class PostCard extends StatefulWidget {
  final Post post;

  PostCard({
    this.post,
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
            postingAccountId: widget.post.postingAccountId,
          ),
          PostCardPhoto(
            photoUrls: widget.post.photoUrls,
            setIndex: setIndex,
          ),
          PostCardPhotoBar(
            photoLength: widget.post.photoUrls.length,
            currentIndex: currentIndex,
          ),
          PostCardComment(
            title: widget.post.title,
            content:
                widget.post.contents,
            uploadTime: widget.post.updateTime,
          ),
        ],
      ),
    );
  }
}
