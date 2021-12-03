import 'package:flutter/material.dart';
import 'package:instagram_exam/screen/home/components/profile_card.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ProfileCard(
            name: 'Mr. Santa',
            profileImgUrl:
                'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg',
          ),
          ProfileCard(
            name: 'Mr. Santa',
            profileImgUrl:
                'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg',
          ),
          ProfileCard(
            name: 'Mr. Santa',
            profileImgUrl:
                'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg',
          ),
          ProfileCard(
            name: 'Mr. Santa',
            profileImgUrl:
                'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg',
          ),
          ProfileCard(
            name: 'Mr. Santa',
            profileImgUrl:
                'https://cdn.pixabay.com/photo/2021/11/22/16/50/santa-claus-6816883_960_720.jpg',
          ),
        ],
      ),
    );
  }
}
